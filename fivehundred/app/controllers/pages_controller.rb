class PagesController < ApplicationController
  def show
    @pictures = Picture.all
  end
end
