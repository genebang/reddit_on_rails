class Vote < ActiveRecord::Base
  validates :user_id, :uniqueness => { :scope => :link_id }
  
  # attr_accessible :title, :body
  attr_accessible :user_id, :link_id, :up
  belongs_to :user
  belongs_to :link
end
