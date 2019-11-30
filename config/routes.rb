Rails.application.routes.draw do
  resources :podcasts
  resources :educator_profiles
  resources :student_profiles
  devise_for :educators
  devise_for :students
  get "podcasts/searching" => "podcasts#searching"
  get "/something/:id" => "podcasts#x"
  # root "podcasts#index"
  post "/listen_again" => "podcasts#save"
  get "/allpodcasts" => "podcasts#allpodcasts"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
