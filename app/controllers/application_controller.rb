class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

protected
  # 編集画面から画像を受け取れるよう設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i(avatar profile name))
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name avatar))
  end
end
