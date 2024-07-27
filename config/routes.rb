# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'landings#index'
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :enquiries,            only: %i[new create]
  resources :landings,             only: :index
  resources :privacy_policies,     only: :index
  resources :terms_and_conditions, only: :index
end
