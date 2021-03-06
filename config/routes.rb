Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :alarms
  resources :quizes
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create,:new, :edit, :update, :show, :index] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]

    resources :messages
  end 

  resources :articles do
    resources :comments
  end
  resources :queries do
    resources :answers
  end

  get "search_result" => "search_result#index", as: "search_result"

  post "search_result/index"

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "users#new", as: "sign_up"
  get "/users/individual/:id" => "users#individual", as: "individual"

  #under queries because the legal acts and layman's explanations are hardcoded onto pages
  get "/wages" => "queries#wages", as: "wages"

  get "/timeoff" => "queries#timeoff", as: "timeoff"

 
  root "welcome#index", as: "home"

  post "answers/upvote"

  post "queries/timeoff_new"

post "messages/second_create"

end

# article#show

# def show
#   @article = ARticle.find
#   @comment = Comment.new
# end

# article show.html.erb

# <%= form_for (@article, @comment) %>