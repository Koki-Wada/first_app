Rails.application.routes.draw do
  #TODO: rootパス設定を行う
  devise_for :farmers do
    get '/farmers/sign_in' => 'farmar/sessions#new', as: :new_farmar_session
    post '/farmers/sign_in' => 'farmar/sessions#create', as: :farmar_session
    delete '/farmers/sign_out' => 'farmar/sessions#destroy', as: :destroy_farmar_session
  end
  devise_for :users do
    get '/users/sign_in' => 'devise/sessions#new', as: :new_user_session
    post '/users/sign_in' => 'devise/sessions#create', as: :user_session
    delete '/users/sign_out' => 'devise/sessions#destroy', as: :destroy_user_session
  end
  get "top" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "user_registration" => "home#user_registration"
end
