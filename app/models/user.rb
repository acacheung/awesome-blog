class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :is_author, :email
end
