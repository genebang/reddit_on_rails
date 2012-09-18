class LinksController < ApplicationController
  def index
  end
  
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end
  
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(params[:link])
    @link.save
  end
  
end
