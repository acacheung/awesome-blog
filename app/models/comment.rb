class Comment < ActiveRecord::Base
  attr_accessible :blog_id, :user_id, :body

  validates :blog_id, :presence => true
  validates :body, :presence => true

  belongs_to :blog
  belongs_to :user
end