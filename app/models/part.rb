class Part < ActiveRecord::Base
	belongs_to :category, :class_name => "Category", :foreign_key => "category_id"

  	validates :category, presence: true
	validates :name, presence: true, length: { minimum: 2 }
end
