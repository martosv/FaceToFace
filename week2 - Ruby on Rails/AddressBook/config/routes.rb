Rails.application.routes.draw do
  get '/' => 'contacts#index'
  get '/show_by_letter/:letter' => 'contacts#show_by_letter', as: 'show_by_letter'
  resources :contacts do
  	resources :phone_numbers
  	resources :emails
  end

end

=begin
	
  get '/contacts' => 'contacts#index'
  post '/contacts' => 'contacts#create'
  get '/new' => 'contacts#new'
  get '/:id' => 'contacts#show'
	
=end
