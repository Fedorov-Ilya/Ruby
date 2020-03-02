class ApplicationController < ActionController::Base
    add_flash_types :success, :danger 
    protect_from_forgery prepend: true
    before_action :set_locale

    def after_sign_in_path_for(resource)
         posts_path
    end

    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
    end
    
    def set_locale
      session[:locale] = params[:locale] if params[:locale]
      I18n.locale = session[:locale] || I18n.default_locale
    end

end
