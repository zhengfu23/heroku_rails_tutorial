Rails.application.routes.draw do
  get 'recipe/index'

  get 'courses/index'

  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
