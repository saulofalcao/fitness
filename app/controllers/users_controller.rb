class UsersController < ApplicationController
	def show
		@user=User.find(params[:id])
	end

	def new
		@user=User.new()
	end

	def create
		@user=User.new(user_params)
		if @user.save
			#Colocar o que fazer com um save de sucesso
		else
			render 'new'
		end
	end

	private
	def user_params
		params.require(:user).permit(:nome, :email, :password, :password_confirmation)
	end

end


