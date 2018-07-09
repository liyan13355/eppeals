Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create,:new, :edit, :update, :show, :index] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  resources :answers
  resources :articles do
    resources :comments
  end
  resources :queries

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "users#new", as: "sign_up"
  get "/users/individual/:id" => "users#individual", as: "individual"
 
  root "welcome#index", as: "home"

end

# article#show

# def show
#   @article = ARticle.find
#   @comment = Comment.new
# end

# article show.html.erb

# <%= form_for (@article, @comment) %>