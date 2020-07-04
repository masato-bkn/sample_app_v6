Rails.application.routes.draw do
  get 'sessions/new'
  # get 'users/new'
  root 'static_pages#home'
  get '/help',    to:'static_pages#help'
  get '/about',   to:'static_pages#about'
  get '/contact', to:'static_pages#contact'  
  get '/signup',  to:'users#new'
  
  # ログインページ
  get '/login', to:'sessions#new'
  # ログイン処理
  post '/login', to:'sessions#create'
  # ログアウト処理
  delete '/logout', to: 'sessions#destory'
  resources :users
end
