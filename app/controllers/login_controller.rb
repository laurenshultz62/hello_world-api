class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    # /authenticate
    def authenticate_login
        username, password = params.values_at :username, password
        if username == "valid"
            render json: {
                authenticated: true,
                message: "Login was succesful!"
            }, status: 200
        else 
            render json: {
                authenticated: false,
                message: "You are not authorized."
            }, status: :forbidden
        end
    end
end