class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|

      t.timestamps

      t.string :name
      t.integer :price
      t.integer :category_id, index: true
    end
  end
end
