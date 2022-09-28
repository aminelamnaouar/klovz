Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles do
    resources :bookings, except: [:edit, :update]
  end
 #test
  resources :bookings, except: %i[new edit] do
    resources :reviews, only: %i[index show create]
  end
  # get '/bookings/:id/booking_renter', to: 'bookings#list_renter'  # /bookings/lists
  #resources :users, only: [:index, :show]
end
