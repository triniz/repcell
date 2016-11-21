Rails.application.routes.draw do
    root :to => 'static#index'
    get '/about', to: 'static#about'
    get '/services', to: 'static#services'
    get '/pricing', to: 'static#pricing'
    resources :contacts, only: [:new, :create]
end
