class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
      end
    
      def edit
        @user = current_user
      end
    
      def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to profile_path(@user), notice: "Infos updated"
      end
    
      def user_params
        params.require(:user).permit(:username,:full_name, :genre)
      end
    end
end
