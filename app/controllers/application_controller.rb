class ApplicationController < ActionController::Base
    layout "standard"
    
    def usuario_actual
        Usuario.find(session[:usuario_id]) if session[:usuario_id]
    end
    helper_method :usuario_actual
end
    
