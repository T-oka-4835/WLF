class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

   private
   def post_image_params
    params.require(:post_image).permit(:picture_name, :image, :caption, :title )
   end
end
