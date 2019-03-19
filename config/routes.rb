Rails.application.routes.draw do
    
    root to: "users#home"
    
    get "/users/details" => "users#details"
    get "/users/signup" => "users#signup"
    get "/users/signin" => "users#signin"
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
