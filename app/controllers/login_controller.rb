# encoding: utf-8
class LoginController < ApplicationController
  def index
  end
  
  def create
    @usuario = Usuario.buscar_email_password(params[:email], params[:password] )  
    if @usuario
      flash[:notice] = "Usted a ingresado correctamente"
      session[:usuario_id] = @usuario.id
      session[:usuario_nombre] = @usuario.nombre_completo
      redirect_to '/dashboard'
    else
      flash[:error] = "Existe errores en su email o contrasena"
      render :index
    end
  end
  
  def destroy
    session[:usuario_id] = nil
    session[:usuario_nombre] = nil
    redirect_to('/login')
  end
end
