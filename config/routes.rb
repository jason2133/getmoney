Rails.application.routes.draw do
  get 'result/index'

  get 'divide/create'

  get 'divide/destroy'

  devise_for :users
  get 'comments/create'

  get 'comments/destroy'

  resources :freeposts do
    resources :comments
  end
  get 'check_n/index'

  get 'post_ns/:post_id/check_n/yes/:check_id' => 'check_n#yes'

  get 'post_ns/:post_id/check_n/no/:check_id' => 'check_n#no'

  resources :post_ns do
    resources :check_n
  end
  

  resources :posts do
    #scaffold에 다른 액션도 추가할 때
    collection do
      get 'all'
    end
  end
  get 'check/index'

  get 'posts/:post_id/check/yes/:check_id' => 'check#yes'

  get 'posts/:post_id/check/no/:check_id' => 'check#no'

  get 'table/create'

  get 'table/destroy'

  resources :posts do
    resources :table , only: [:create, :destroy]
    resources :check, :result
  end
  get 'home/index'

  get 'home/login'

  root 'home#index'

  get 'posts/:id/create2'=>'posts#create2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
