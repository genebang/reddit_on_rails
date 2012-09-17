class PagesController < ApplicationController
  def index
    #@links = Link.all
    #@links = Link.paginate(:page => params[:page], :per_page => 2, :order => 'updated_at DESC')
    # ex - Post.page(params[:page]).order('created_at DESC')
    # ex2 - Link.order('created_at DESC').page(1).per_page(1)
    # use params[:per_page] ||= 25 and use params[:page] ||= 1
    #@links = Link.per_page(params[:per_page] ||= 2).page(params[:page] ||= 1).order('created_at DESC')
    params[:per_page] ||= 2
    params[:page] ||= 1
    @links = Link.paginate(:page => params[:page], :per_page => params[:per_page], :order => 'created_at DESC')
  end
end
