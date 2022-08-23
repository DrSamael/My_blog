class CreateNewBadModels < ActiveRecord::Migration[6.1]
  def change
    create_table :new_bad_models do |t|

      t.timestamps
    end
  end
end
