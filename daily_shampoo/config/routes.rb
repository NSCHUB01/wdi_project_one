Rails.application.routes.draw do

  resources :users do
  resources :posts
  # resources :comments
end



root "posts#index"





end
