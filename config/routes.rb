Rails.application.routes.draw do
  resources :courses
  resources :holes
  resources :golfers

  get '/courses/:id/holes', to: 'courses#holes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
