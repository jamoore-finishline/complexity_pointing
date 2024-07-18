Rails.application.routes.draw do
  # Devise routes for users
  devise_for :users

  # Roles routes (if needed)
  resources :roles

  # Pointing sessions routes
  resources :pointing_sessions, except: [:new, :create] do
    # Nested backlog items routes
    resources :backlog_items do
      # Nested votes routes
      resources :votes, only: [:create, :update, :destroy]

      # Nested comments routes (if comments belong to backlog items)
      resources :comments, only: [:create, :update, :destroy]
    end
  end

  # Admin namespace
  namespace :admin do
    get 'dashboard', to: 'dashboard#index', as: :dashboard
    resources :users  
    resources :pointing_sessions, only: [:new, :create, :index, :show, :edit, :update, :destroy]
    resources :backlog_items, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  end

  # Root route
  root 'home#index'

  # Other routes
end
