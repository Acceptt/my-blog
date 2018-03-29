class LoginController < ApplicationController
  def index

  end

  def buat_session
  	user = User.find_by(username:login_params[:username])
  	if user && user.authenticate(login_params[:password])
  		session[:user_id] = user.id
  		redirect_to '/dashboard/'
  	else
  		flash[:danger] = "username atau password salah."
  		redirect_to '/login/'
  	end
  end

  def add
  	
  end

  def create_user
  	user = User.new(user_params)
  	if user.save
  		flash[:success] = "Data Berhasil Disimpan .."
  		redirect_to '/login/'
  	else
  		flash[:danger] = "silahkan coba lagi.."
  		redirect_to '/login/'
  	end
  end

  private
  	def login_params
  		params.require(:login).permit(:username,:password)
  	end

  	def user_params
  		params.require(:user).permit(:name, :username, :password, :password_confirmation)
  		
  	end



end
