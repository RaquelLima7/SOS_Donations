class UsersController < ApplicationController
    def edit
        @user = current_user
        authorize @user
      end
    
      def update
        @user = current_user
        authorize @user
        @user.update(user_params)
        redirect_to '/dashboard'
      end
    
      def user_params
        params.require(:user).permit(:first_name, :last_name, :address, :photo)
      end
end
