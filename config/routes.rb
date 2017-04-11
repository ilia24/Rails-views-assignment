Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'

  resources :locations
  resources :events

  get 'example/form' => 'example#form'
  resources :job_applications
  delete 'events/:id' => 'events#destroy', as delete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
