class SessionsController < ApplicationController
  layout "standard"

  def new
  end

  def create
    @user = Usuario.find_by_email_usuario (params[:email_usuario])
      if @user && @user.authenticate(params[:password])
        session[:usuario_id] = @user.id
        redirect_to "/admins/new"        
#        redirect_to "/usuarios/#{@user.id}"
      else
        flash[:alert] = "Usuario y/o Password Inválidos"
        redirect_to "/sessions/new"
      end
  end

  def update
  end

  def destroy
    reset_session
    session[:usuario_id] = nil
    redirect_to "/sessions/new"
  end

end
