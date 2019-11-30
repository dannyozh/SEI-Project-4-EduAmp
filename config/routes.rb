Rails.application.routes.draw do
  resources :podcasts
  resources :educator_profiles
  resources :student_profiles
  devise_for :educators
  devise_for :students
  get "/something/:id" => "podcasts#x"
  # root "podcasts#index"
  post "/listen_again" => "podcasts#save"
  get "/allpodcasts" => "podcasts#allpodcasts"
  get "/alldurations" => "podcasts#durations"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
