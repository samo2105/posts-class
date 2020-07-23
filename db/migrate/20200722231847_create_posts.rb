class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :user
      t.text :content
      t.string :photo_url
      t.integer :likes, default: 0
      t.integer :dislike, default: 0

      t.timestamps
    end
  end
end
