Rails.application.routes.draw do
    root :to => 'static#index'
    get '/contact', to: 'static#contact'
    get '/about', to: 'static#about'
    get '/services', to: 'static#services'
end
