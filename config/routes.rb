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
  patch '/update-task/:id' => 'tasks#update'
  # delete '/tasks/:id' => 'tasks#destroy'
end

# frozen_string_literal: true

# Rails.application.routes.draw do
#   # RESTful routes
#   resources :activities, except: %i[new edit]
#   resources :examples, except: %i[new edit]
#   resources :users
#
#   # Custom routes
#   post '/sign-up' => 'users#signup'
#   post '/sign-in' => 'users#signin'
#   delete '/sign-out' => 'users#signout'
#   patch '/change-password/' => 'users#changepw'
#   patch '/update-activity/:id' => 'activities#update'
#   delete '/activities/:id' => 'activities#destroy'
# end
