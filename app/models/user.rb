class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :is_author, :email

  validates :email, :uniqueness => true, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => 'Not a valid email format'}

  has_many :comments
  has_many :blogs
end