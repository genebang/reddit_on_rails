class VotesController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    ##@vote = Comment.create(params[:vote])
    #@vote = current_user.votes.create(params[:vote])
    #puts "====================="
    #puts @vote.errors.inspect
    
    @vote = Vote.where(:link_id => params[:vote][:link_id], :user_id => current_user.id).first
    if @vote
      @vote.up = params[:vote][:up]
      @vote.save
    else
      @vote = current_user.votes.create(params[:vote])
    end
    
    #boolean logic v1
    #@vote = current_user.votes.where(:link_id => params[:vote][:link_id]).first || current_user.votes.create(params[:vote])
    #@vote.update_attributes(:up => params[:vote][:up])
    
    #boolean logic v2
    #@vote = current_user.votes.where(:link_id => params[:vote][:link_id]).first
    #@vote.update_attributes(:up => params[:vote][:up])
    
    redirect_to :back
  end
  
end
