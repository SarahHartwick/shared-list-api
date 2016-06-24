Rails.application.routes.draw do
  resources :items, except: [:new, :edit]
  resources :events, except: [:new, :edit] do
    resources :items, only: [:index, :create, :delete, :update]
  end
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/users/:id/events' => 'events#user_events'
  get '/users/:id/items' => 'items#user_items'
  resources :users, only: [:index, :show]
end
