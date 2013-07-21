class Post < ActiveRecord::Base
  include 
  attr_accessible :title, :trailer_url, :image_url, :user_id, :release_date
  belongs_to :user
  has_many :votes
  validates_presence_of :title
  validates :title, uniqueness: true


  def self.find_tomato name
    rotten_results = RottenTomatoes::RottenMovie.find(:title => name, :limit => 5)
  end

end