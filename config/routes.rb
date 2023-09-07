# frozen_string_literal: true

Rails.application.routes.draw do
  root 'questions#new'
  resources :questions, only: %i[new create show]
  get '/ask', to: 'questions#ask'
  get '/answer', to: 'questions#answer'
end
