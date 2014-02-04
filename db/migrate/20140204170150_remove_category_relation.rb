class RemoveCategoryRelation < ActiveRecord::Migration
  def change
  	remove_column :parts, :category_id
  end
end
