Rails.application.routes.draw do
  get "image/:id", to:'image#view'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
