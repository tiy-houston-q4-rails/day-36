class Link < ActiveRecord::Base

  validates :url, presence: true, format: URI::regexp(%w(http https))
  validates :text, presence: true

  before_validation do
    if url.present? && !url.start_with?("http")
      self.url = ["http://", url].join
    end
  end

  before_validation  do
    self.text ||= "Oh Hai there"
  end

  after_create do
    Rails.logger.info "YO, we created #{self.url}"
  end
end
