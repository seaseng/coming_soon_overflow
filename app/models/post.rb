class Post < ActiveRecord::Base
  # REVIEW: emtpy include?
  include
  attr_accessible :title, :trailer_url, :image_url, :user_id, :release_date
  belongs_to :user
  has_many :votes
  validates_presence_of :title


  def self.find_tomato name
    rotten_resutls = RottenTomatoes::RottenMovie.find(:title => name, :limit => 5)
    #self.new :title => rotten_resutls.title
  end
end
