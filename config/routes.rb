Lsv1::Application.routes.draw do
  root :to => "students#show"
  
  resources :sessions

  get 'signup', to: 'students#new', as: 'signup'  
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :enrollments

  resources :students
  resources :lights

  resources :topics

  resources :courses

  resources :teachers


end
