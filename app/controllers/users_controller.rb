class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @post_image = PostImage.find(params[:id])
  end
end
