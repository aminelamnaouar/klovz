Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles do
    resources :bookings, only: [:new, :create]
  end

  resources :articles do
    resources :reviews, only: [:new, :create, :show]
  end
 #test
  # resources :bookings, except: %i[new edit create] do
  #   resources :reviews, only: %i[index show create]
  # end
  #resources :users, only: [:index, :show]
end
