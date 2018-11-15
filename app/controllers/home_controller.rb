class HomeController < ApplicationController

before_action :set_user, only: [:show, :edit, :update, :destroy]
	
	def index
	 @user = User.all
	end 

	def show

	end


	def landing1
	gibbon = Gibbon::Request.new(api_key: "ff53197472e303cf758de97f03779caf-us19")
	end


	def landing2
	gibbon = Gibbon::Request.new(api_key: "ff53197472e303cf758de97f03779caf-us19")
	end


	def landing3
	gibbon = Gibbon::Request.new(api_key: "ff53197472e303cf758de97f03779caf-us19")
	end

	def landing1create
gibbon = Gibbon::Request.new(api_key: "ff53197472e303cf758de97f03779caf-us19")
	gibbon.timeout = 10
	gibbon.lists("98a25261c4").members.create(
		body: {

			email_address: params[:email],
			status: "subscribed",
			FNAME: "First name",
			LNAME: "Last name"
				})	end


	def landing2create
gibbon = Gibbon::Request.new(api_key: "ff53197472e303cf758de97f03779caf-us19")
	gibbon.timeout = 10
	gibbon.lists("98a25261c4").members.create(
		body: {

			email_address: params[:email],
			status: "subscribed",
			FNAME: "First name",
			LNAME: "Last name"
				})	end


	def landing3create
gibbon = Gibbon::Request.new(api_key: "ff53197472e303cf758de97f03779caf-us19")
	gibbon.timeout = 10
	gibbon.lists("98a25261c4").members.create(
		body: {

			email_address: params[:email],
			status: "subscribed",
			FNAME: "First name",
			LNAME: "Last name"
				})	end



	def edit
	end

	def update
	end

	def destroy
		@user.destroy
		redirect_to root_path
	end

	private 

	def set_user
	 @user = User.find(params[:id])
	end

	def User_params
		params.require(:user).permit(:email, :password)
	end
end
