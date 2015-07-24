Rails.application.routes.draw do
  get '/' => 'url_links#index'
  get '/url_links' => 'url_links#index'
  get '/top10' => 'url_links#top10', as: 'top10'
  get '/show' => 'url_links#show'
  get '/:id' => 'url_links#redirect_to_url', as: 'redirect_to_url'
  resources :url_links
end
