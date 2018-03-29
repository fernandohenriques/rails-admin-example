class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    if usuario_signed_in?
      sign_out @user
      redirect_to '/users/login', alert: 'Você não está autorizado à acessar essa página.'
    end
  end

end
