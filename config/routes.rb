Rails.application.routes.draw do
  resources :podcasts
  resources :educator_profiles
  resources :student_profiles
  devise_for :educators
  devise_for :students
  root "podcasts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
