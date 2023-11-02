class SessionsController < ApplicationController
  
    def new
      @user = User.new
    end
  
    include TonHelper

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to new_path, notice: "Connexion réussie !"
    else
      flash.now[:alert] = "Email ou mot de passe incorrect."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Déconnexion réussie !"
  end
end
