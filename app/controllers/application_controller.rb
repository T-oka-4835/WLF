class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    post_images_path(resource)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email,  :postal_code, :prefecture_code, :city, :building])
  # 　devise_parameter_sanitizer.permit(:sign_in, keys: [:name,:passward])
  end

end
