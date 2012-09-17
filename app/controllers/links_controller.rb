class LinksController < ApplicationController
  def index
  end
  
  def show
  end
  
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(params[:link])
    @link.save
  end
  
end
