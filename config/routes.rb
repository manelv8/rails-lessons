Rails.application.routes.draw do
  resources :comments
  root to: 'posts#index'

  resources :posts do
    get "admin/comments", to: 'posts#comments', from: 'admin'
    get "user/comments", to: 'posts#comments', from: 'user'
    get :comments, to: 'posts#comments', defaults: { format: :json }
  end

  namespace :admin do
    resources :posts, only: :index, as: :rota_do_gilson
  end
end
