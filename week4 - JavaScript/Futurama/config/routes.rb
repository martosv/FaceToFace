Rails.application.routes.draw do
  get '/' => 'characters#index'
  resources :characters
end
