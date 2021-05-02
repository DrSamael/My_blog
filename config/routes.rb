Rails.application.routes.draw do

  # get "/articles", to: "articles#index"
  #
  root 'welcome#index'
  get 'welcome/index'

  resources :articles do
    resources :comments
  end
  resources :products

  get 'products/download_pdf/:id', to: 'products#download_pdf', as: 'download_pdf'

  # get 'products' => 'products#index', as: 'products'

end
