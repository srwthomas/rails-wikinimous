Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index', as: :articles
  # new
  get 'articles/new', to: 'articles#new', as: :new
  # edit
  get 'article/:id/edit', to: 'articles#edit', as: :edit
  # show
  get 'article/:id', to: 'articles#show', as: :article
  # delete
  delete 'article/:id', to: 'articles#destroy'
  # update
  patch 'article/:id', to: 'articles#update'
  # create
  post '/', to: 'articles#create'
end
