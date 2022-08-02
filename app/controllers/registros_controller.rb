class RegistrosController < ApplicationController
    layout "standard"

def new
    @user = Usuario.new
end
  
def create
    @user = Usuario.new(params.require(:usuario).permit(:ci_usuario, :dv_usuario, :nombre_usuario, :apellidos_usuario, :fechanac_usuario, :telefono_usuario, :email_usuario, :imagen_usuario, :domicilio_usuario, :region_usuario, :comuna_usuario, :tipo_usuario, :password, :password_confirmation, :vigencia_usuario))

    if @user.save
        registro[:usuario_id] = @user.id
        redirect_to "sessions/new", notice: "Bienvenid@ a la Comunidad de Entre Mieles, Te y Café"
    else
        render :new
        flash[:alert] = "Te falta un buen café... tienes datos incompletos... ingrésalos"
    end
end
  
def show
end

end