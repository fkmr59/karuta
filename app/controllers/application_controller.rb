class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_allowed_parameters, if: :devise_controller?

  protected

  # 管理者用のカラムを許可
  def set_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :role ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :role ])
  end
end
