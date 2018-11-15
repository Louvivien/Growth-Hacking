class HomeController < ApplicationController
<<<<<<< HEAD
  def index
  end
=======
 before_action :set_user, only: [:show, :edit, :update, :destroy]
def index
 @user = User.all
end 

def show

end

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


>>>>>>> 4c725c92ecc40d5bee9dc885e76ce0cff511aa9e
end
