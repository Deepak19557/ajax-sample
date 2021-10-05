Rails.application.routes.draw do 
  #resources :images
  resources :users 
  root  "users#index" 
  
  delete 'users/:id(.:format)', :to => 'users#destroy'
  get  '/images/:id', to: 'images#index'

  get  'user/ajax_form', to: "users#ajax_form"
  post 'user/create_ajax_form_user', to: "users#create_ajax_form_user" 

  get  'user/ajax', to: "users#ajax"
  post 'user/create_ajax', to: "users#create_ajax" 

  get  'user/edit', to: "users#edit"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end





