class CreatePosts < ActiveRecord::Migration
  def change
    create_table  :posts do |t|
      t.string    :title
      t.string    :url
      t.string    :image_url
      t.integer   :upvotes
      t.integer    :downvotes
      t.belongs_to :user
    end

  end

end
