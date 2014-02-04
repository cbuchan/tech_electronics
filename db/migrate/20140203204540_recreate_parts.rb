class RecreateParts < ActiveRecord::Migration
  def change
		create_table :parts do |t|
		t.string :name
		t.integer :quantity
		t.text :link
		t.decimal :price
		t.boolean :requested

		t.timestamps
	end
  end
end
