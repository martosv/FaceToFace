Rails.application.routes.draw do
 get '/' => 'hangmen#index'
 get '/play' => 'hangmen#play', as: 'play'
 post '/hangmen/:id/letter' => 'hangmen#letter', as: 'check_letter'
 post '/hangmen/:id/word' => 'hangmen#word', as: 'check_word'
 resources :hangmen
end