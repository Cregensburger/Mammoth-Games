class Comment < ActiveRecord::Base
  belongs_to :games
  belongs_to :user
end
