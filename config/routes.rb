Rails.application.routes.draw do
  get 'notifications/index'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
end
