class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @post_images = PostImage.all
  end

  def show
  end
end
