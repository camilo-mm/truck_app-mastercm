class UsersController < ApplicationController
 # tiene que ver con devise para decir si el usuario está logueado o no
	before_action :authenticate_user!

# creamos este befor action para validar si es el usuario propio o si está entrando a otros perfiles

	before_action :validate_user

	before_action :find_user

  def show
		avatar_url = current_user.avatar_url
		@large_avatar = "#{avatar_url}&s=170"  
  end

  private

  def validate_user
  	if current_user.id.to_s != params[:id]
  		redirect_to root_path
  		flash[:alert] = "you don´t have permissions."
  	end
  end

  def find_user
  	@user = User.find(params[:id])
  end

end

