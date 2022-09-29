Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles do
    resources :bookings, only: [:new, :create]do
    resources :reviews, only: %i[new create]
    end
  end
 #test
  resources :bookings, except: %i[new edit create]
  #resources :users, only: [:index, :show]
end
