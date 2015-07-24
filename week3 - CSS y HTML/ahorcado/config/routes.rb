Rails.application.routes.draw do
 get '/' => 'hangmen#index'
 resources :hangmen
end