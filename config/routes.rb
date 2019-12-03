Rails.application.routes.draw do
  devise_for :students, controllers: { registrations: "students/registrations" }
  resources :podcasts
  resources :educator_profiles
  resources :student_profiles
  devise_for :educators
  root "landings#landing"
  post "/listenagain" => "podcasts#save"
  post "/subscribe" => "podcasts#subscribe"
  get "/something/:id" => "podcasts#x"
  delete "/deleteentry/:pid" => "podcasts#destroyentry"
  delete "/deletesubscribe/:eid" => "podcasts#destroysubscribe"
  # root "podcasts#index"
  get "/allpodcasts" => "podcasts#allpodcasts"
  get "/podcastauthor/:id" => "podcasts#podcastauthor"
  get "/alldurations" => "podcasts#durations"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
