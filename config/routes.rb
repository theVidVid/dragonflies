Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :destinations

  root 'destinations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
