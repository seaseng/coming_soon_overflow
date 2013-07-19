class Post < ActiveRecord::Base
  attr_accessible :title, :url, :image_url, :user_id
  belongs_to :user
  has_many :votes
  validates_presence_of :title
end
