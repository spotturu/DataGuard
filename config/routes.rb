Rails.application.routes.draw do
  resources :meeting_points
  resources :group_members
  resources :group_leaders
  resources :groups
  resources :users
  resources :units

  root to: "meeting_points#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
