class SessionsController < ApplicationController
	def new
 	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# Sign in the user e redireciona a user show
			sign_in(user)
			flash[:success]="Olá, #{user.nome}! Bem vindo ao #{$base_name}!"

			redirect_to user
		else
			#cria uma mensagem de erro e render novamente o form new
			# TODO: mostrar mensagem de clicar aqui se esqueceu a senha
			flash.now[:error]="Usuário ou senha não encontrados. Por favor, tente novamente"
			render 'new'		
		end
	end

	def destroy
	end

end
