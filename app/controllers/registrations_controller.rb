class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    user_path(resource)
  end
 
  private
 
      def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
 
      def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
      end
end


class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    redirect_to @user
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    redirect_to @user
  end
end