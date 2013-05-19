class Comment < ActiveRecord::Base
  attr_accessible :user_id, :body
end
