# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  delete '/activities/:id' => 'tasks#destroy'
end
