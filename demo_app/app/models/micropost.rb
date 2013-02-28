class Micropost < ActiveRecord::Base
  attr_accessible :conent, :user_id
  validates :conent, :length => { :maximum => 140, :minimum => 5}
  validates :user_id, :presence => true

  belongs_to :user
end
