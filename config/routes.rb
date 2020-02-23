# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'visitors#welcome'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/failure'
  resources :users

  get 'visitors/welcome'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
