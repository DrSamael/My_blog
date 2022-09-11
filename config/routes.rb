Rails.application.routes.draw do

  get 'redirect/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Ckeditor::Engine => '/ckeditor'


  resources :articles do
    resources :comments
  end

  scope '(/newnewnew)' do
    root 'welcome#index'
    resources :products
  end
  resources :posts


  get 'products/download_pdf/:id', to: 'products#download_pdf', as: 'download_pdf'
  get 'streaming', to: 'products#stream', as: 'stream'

  # resources :pictures

  get 'pictures', to: 'pictures#index', defaults: { default_parameter: 'default_val' }
  get 'picture/:id', to: 'pictures#show', as: 'picture'
  # get 'picture/:id', to: redirect('articles/%{id}'), as: 'picture'

  direct :homepage do
    "http://www.rubyonrails.org"
  end

  get '/redirect/:url', to: 'redirect#show', as: 'redirect', constraints: { url: /[\w%\.\/\:]+/ }
end
