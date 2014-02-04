class AddRequestedToPart < ActiveRecord::Migration
  def change
    add_column :parts, :requested, :boolean
  end
end
