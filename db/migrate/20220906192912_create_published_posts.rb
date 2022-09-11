class CreatePublishedPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :published_posts do |t|
      t.references :post
      t.timestamps
      t.index :created_at
    end
  end
end
