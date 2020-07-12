Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :lists, only: [:index, :show]
    resources :babies, only: [:create, :update]
  end
 end

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
