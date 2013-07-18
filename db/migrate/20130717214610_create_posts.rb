class CreatePosts < ActiveRecord::Migration
  def change
    create_table  :posts do |t|
      t.string    :title
      t.string    :url
      t.string    :image_url
      t.integer   :upvotes, default: 0
      t.integer    :downvotes, default: 0
      t.belongs_to :user
    end

  end

end
