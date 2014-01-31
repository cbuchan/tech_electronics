class AddLinkToPart < ActiveRecord::Migration
  def change
    add_column :parts, :link, :text
  end
end
