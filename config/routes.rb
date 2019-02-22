Rails.application.routes.draw do
  namespace :api do
    resources :crops, except: [:new, :edit]
  end
end
