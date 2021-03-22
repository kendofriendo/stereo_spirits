class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def after_sign_up_path_for(_resource)
		root_path
	end

	def show_path_for(_resource)
		'/users/show'
	end

end