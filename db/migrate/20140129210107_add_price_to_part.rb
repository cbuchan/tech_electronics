class AddPriceToPart < ActiveRecord::Migration
  def change
    add_column :parts, :price, :decimal
  end
end
