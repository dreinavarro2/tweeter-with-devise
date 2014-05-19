class UsersController < ApplicationController
  def new
		@user = User.new
  end

  def create
		@user = User.new
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		@user.save!
		flash[:notice] = "New user created."
		redirect_to :user
  end

	def index
		@users = User.all	
	end

	def show
		@user = User.find(params[:id])	
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		@user.save!
		flash[:notice] = "#{@user.id} is updated."
		render :index
	end	

end
