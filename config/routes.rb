Rails.application.routes.draw do
    root :to => 'static#index'
    get '/about', to: 'static#about'
    get '/services', to: 'static#services'
    resources :contacts, only: [:new, :create]
end
