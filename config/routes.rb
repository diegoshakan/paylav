require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  root to: "purchase_informations#index"
  get 'purchase_informations', to: "purchase_informations#index"
  post 'purchase_informations', to: "purchase_informations#import_data"
  mount Sidekiq::Web => '/sidekiq'
end
