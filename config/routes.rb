Rails.application.routes.draw do



  root to: 'top#index'

  resources :count_words
  resources :gw_calculations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
