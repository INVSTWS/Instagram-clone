class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_up_params, except: [:create]

  after_action :after_sign_in, only: [:create]

  protected

  def after_sign_in
    redirect_to root_path
  end

  def create
    super do |resource|
      sign_in(resource) if resource.errors.empty?
    end
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
