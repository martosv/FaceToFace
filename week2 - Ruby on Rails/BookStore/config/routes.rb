Rails.application.routes.draw do
  get '/' => 'books#index'
  post '/books/search' => 'books#search', as: 'book_search'
  resources :books do
  	resources :ratings
  end

end
