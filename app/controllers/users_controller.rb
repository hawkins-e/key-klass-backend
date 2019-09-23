class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, include: [:challenges, :statistics]
        end
        
        def show 
            user = User.find_by(id: params[:id])
            render json: user.to_json, include: [:challenges, :statistics]
        end 
    
        def create
            @user = User.new(params[:user])
    
            @user.save 
            redirect_to @user 
        end 

        def destroy 
            user= User.find_by(id: params[:id])
            user.delete
        end 

        private 

     
        def user_params 
        params.require(:user).permit(:username, :name, :age)
        end
    
end
