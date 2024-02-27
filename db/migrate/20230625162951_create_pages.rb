class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.text :name
      t.text :url
      t.text :content_part
      t.text :title
      t.text :keywords
      t.text :description
      t.boolean :published

      t.timestamps
    end
  end
end
