class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :destroy, :update]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = t :success
			redirect_to users_path
		else
			render :new
		end
	end

	def update
		if @user.update(user_params)
			flash[:success] = t :success
			redirect_to users_path
		else
			render :new
		end
	end

	def destroy
		if @user.destroy
			flash[:success] = t :success
			redirect_to users_path
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :code, :email, :state, :city, :address, :foothold, :work)
	end	

	def set_user
		@user = User.find(params[:id])
	end
end