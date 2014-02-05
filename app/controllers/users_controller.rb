class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def index
		@users_grid = initialize_grid(User)
	end
end