class CreatePosts < ActiveRecord::Migration
  def change
    create_table  :posts do |t|
      t.string    :title
      t.string    :trailer_url
      t.string    :image_url
      t.date      :release_date
      t.belongs_to :user
    end

  end

end
