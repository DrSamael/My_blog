class AddMixedToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :mixed, :boolean
  end
end
