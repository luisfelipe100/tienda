class AddPremiumToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :premium, :bool, default: false
  end
end
