module UsersHelper
    def current_user
        session[:current_user]
    end

    def signed_in?
        session[:current_user] == nil
    end
end
