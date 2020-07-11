Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :lists
    resources :babies
  end
 end

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
