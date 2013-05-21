class Blog < ActiveRecord::Base
  attr_accessible :title, :body, :category_id, :author_id

  validates :title, :presence => true
  validates :body, :presence => true

  belongs_to :user
  has_many :category
  has_many :comments
end