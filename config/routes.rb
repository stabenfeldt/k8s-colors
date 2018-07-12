Rails.application.routes.draw do
  resources :colors
  root 'colors#index' # shortcut for the above
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
