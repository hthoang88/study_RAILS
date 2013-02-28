class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :name, :presence => true
  validates :title, :presence => true,
  					:length => {:minimum => 5}

  def to_s
  	s = "\nName   : #{self.name} \nTitle  : #{self.title} \nContent: #{self.content}"
  end
end
