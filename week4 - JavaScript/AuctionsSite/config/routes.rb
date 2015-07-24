Rails.application.routes.draw do
  get '/' => 'auctions#index'
  resources :users do
    resources :auctions do
    	resources :user do
    		resources :bids
    	end
    end
  end
end
