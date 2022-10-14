class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:mail, :encrypted_password])  
    end
    def permitted_administrador?
        if !current_user.administrador?
            redirect_to etiqueta_path, alert: "No tiene permisos para editar etiquetas"
        end
    end
end

