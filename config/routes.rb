Rails.application.routes.draw do
  root 'welcome#index'

  post 'create_users' => 'welcome#users'
  post 'products' => 'welcome#create_products'

  get 'users' => 'welcome#users'

  get 'products' => 'welcome#products'

  get 'show_user' => 'welcome#show_user'
  get 'edit_user' => 'welcome#edit_user'
  post 'update_users' => 'welcome#update_users'

  get 'show_product' => "welcome#show_product"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
