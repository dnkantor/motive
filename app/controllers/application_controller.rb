class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :get_username

    def current_user
        #Conditional assignment operator - First check if there is a current user,
        #if there is no user, it will find it and set it to the current_user variable!
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def get_username
        current_user[:username]
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:danger] = "Must be logged in to perform that action."
            redirect_to login_path
        end
    end
end
