Rails.application.routes.draw do
  get "dinosaur/:id", to:'image#dinosaur'
  get "unicorn/:id", to:'image#unicorn'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
