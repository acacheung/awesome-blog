class Blog < ActiveRecord::Base
  attr_accessible :author_id, :title, :body
end
