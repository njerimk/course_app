Rails.application.routes.draw do

  # /courses/asdf

  get '/courses/', to: 'courses#index'
 
  get '/courses/new', to: 'courses#new'
  post '/courses/', to: 'courses#create'
  
  get '/courses/:id', to: 'courses#show', as: 'course'
  
  get '/courses/:id/edit', to: 'courses#edit'
  patch '/courses/:id/', to: 'courses#update'

  # get '/students/index'
  # get 'students/show'
  # get 'students/edit'
  # get 'students/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
