Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get'page/home',to:'page#home'

  root'page#home'
  get'about',to:'page#about'

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # post 'users', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
