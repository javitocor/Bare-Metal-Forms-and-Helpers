module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user
        @current_user = nil
        if session[:user_id]
          @current_user ||= User.find(session[:user_id])
        end
    end

    def logged_in?       
        !current_user.nil?
    end

    def authorized
        redirect_to root_path unless logged_in?
    end

    def logout
        session[:user_id] = nil
    end
end
