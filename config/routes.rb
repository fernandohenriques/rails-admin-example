Rails.application.routes.draw do
  devise_paths = { sign_in: 'login', sign_out: 'logout' }
  devise_controllers = { sessions: 'sessions', passwords: 'passwords' }
  devise_for :usuarios, path: 'users', controllers: devise_controllers, path_names: devise_paths

  mount RailsAdmin::Engine => '/', as: 'rails_admin'
end
