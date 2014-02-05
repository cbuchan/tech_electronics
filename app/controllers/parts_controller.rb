class PartsController < ApplicationController

	before_filter :authorize, :except => [:index, :index_request, :show]

	def new
		if !defined? @part
			@part = Part.new
		end
	end

	def new_request
		@part = Part.new
		@part.requested = true

		render 'new'
	end
 
	def create
		@part = Part.new(part_params)

		if @part.save
			redirect_to @part
		else
			render 'new'
		end
	end

	def show
		@part = Part.find(params[:id])
	end

	def index
		@parts_grid = initialize_grid(Part, 
			:conditions => {:requested => false},
			:include => [:category])
		@parts = Part.where(requested: false)
	end

	def index_request
		@parts_grid = initialize_grid(Part, 
			:conditions => {:requested => true},
			:include => [:category])
		@parts = Part.where(requested: true)
	end

	def edit
		@part = Part.find(params[:id])
	end

	def update
		@part = Part.find(params[:id])

		if @part.update(params[:part].permit(:name, :quantity, :link, :price, :requested, :category_id))
			redirect_to @part
		else
			render 'edit'
		end
	end

	def destroy
		@part = Part.find(params[:id])
		@part.destroy

		redirect_to parts_path
	end

	private
		def part_params
			params.require(:part).permit(:name, :quantity, :link, :price, :requested, :category_id)
		end

end
