Rails.application.routes.draw do
  devise_for :students, controllers: { registrations: "students/registrations" }
  resources :podcasts
  resources :educator_profiles
  resources :student_profiles
  devise_for :educators
  post "/listenagain" => "podcasts#save"
  get "/something/:id" => "podcasts#x"
  delete "/deleteentry/:pid" => "podcasts#destroyentry"
  # root "podcasts#index"
  get "/allpodcasts" => "podcasts#allpodcasts"
  get "/alldurations" => "podcasts#durations"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
