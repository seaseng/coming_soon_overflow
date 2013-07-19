class Post < ActiveRecord::Base
  include 
  attr_accessible :title, :url, :image_url, :user_id
  belongs_to :user
  has_many :votes
  validates_presence_of :title


  def self.find_tomato name
    rotten_resutls = RottenTomatoes::RottenMovie.find(:title => name, :limit => 5)
    #self.new :title => rotten_resutls.title
  end
end
