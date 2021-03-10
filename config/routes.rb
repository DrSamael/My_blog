Rails.application.routes.draw do

  # get "/articles", to: "articles#index"
  #
  root 'welcome#index'
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get 'products' => 'products#index', as: 'products'

end
