Rails.application.routes.draw do
  resources :profiles, except: [:new, :edit]
  resources :items, except: [:new, :edit]
  resources :sharings, except: [:new, :edit]
  resources :events, except: [:new, :edit] do
    resources :items, only: [:index, :create, :delete, :update]
  end
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/users/:id/events' => 'events#user_events'
  get 'sharings/:user_id/events/:id' => 'sharings#my_events'
  get '/users/:id/items' => 'items#user_items'
  get '/events/search/:data' => 'events#search'
  get '/profiles/search/:data' => 'profiles#search'
  get '/sharings/find/:id' => 'sharings#events'
  get '/profiles/find/:id' => 'profiles#find'
  resources :users, only: [:index, :show]
end
