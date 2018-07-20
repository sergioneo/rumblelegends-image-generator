Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "dinosaur/:id", to:'image#dinosaur'
  get "unicorn/:id", to:'image#unicorn'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
