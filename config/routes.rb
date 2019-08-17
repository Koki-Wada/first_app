Rails.application.routes.draw do
  root 'home#top'
  devise_for :farmers, :controllers => {
    :registrations => 'farmer/registrations',
    :sessions => 'farmer/sessions',
    :passwords => 'farmer/passwords'
  }
  #  get '/farmers/sign_in' => 'farmar/sessions#new', as: :new_farmar_session
  #  post '/farmers/sign_in' => 'farmar/sessions#create', as: :farmar_session
  #  delete '/farmers/sign_out' => 'farmar/sessions#destroy', as: :destroy_farmar_session
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }

  #devise_scope :user do
  #  get "sign_in", :to => "users/sessions#new"
  #  get "sign_out", :to => "users/sessions#destroy" 
  #end
  #  get '/users/sign_in' => 'devise/sessions#new', as: :new_user_session
  #  post '/users/sign_in' => 'devise/sessions#create', as: :user_session
  #  delete '/users/sign_out' => 'devise/sessions#destroy', as: :destroy_user_session
  
  #get "top" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
