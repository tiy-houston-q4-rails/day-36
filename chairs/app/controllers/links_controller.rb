class LinksController < ApplicationController

  before_action :authenticate_user!

  def index
    @link = Link.new
    @links = Link.all
  end

  def new

  end

  def create
    @link = Link.new(params.require(:link).permit(:url))
    if @link.save
      @links = Link.all
      @link = Link.new
    end
  end
end
