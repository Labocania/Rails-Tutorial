Rails.application.routes.draw do
   
  root                'static_pages#home'    
  get 'sessions/new'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]

=begin
                 Prefix Verb   URI Pattern                             Controller#Action
                   root GET    /                                       static_pages#home
           sessions_new GET    /sessions/new(.:format)                 sessions#new
                   help GET    /help(.:format)                         static_pages#help
                  about GET    /about(.:format)                        static_pages#about
                contact GET    /contact(.:format)                      static_pages#contact
                 signup GET    /signup(.:format)                       users#new
                  login GET    /login(.:format)                        sessions#new
                        POST   /login(.:format)                        sessions#create
                 logout DELETE /logout(.:format)                       sessions#destroy
                  users GET    /users(.:format)                        users#index
                        POST   /users(.:format)                        users#create
               new_user GET    /users/new(.:format)                    users#new
              edit_user GET    /users/:id/edit(.:format)               users#edit
                   user GET    /users/:id(.:format)                    users#show
                        PATCH  /users/:id(.:format)                    users#update
                        PUT    /users/:id(.:format)                    users#update
                        DELETE /users/:id(.:format)                    users#destroy
edit_account_activation GET    /account_activations/:id/edit(.:format) account_activations#edit
        password_resets POST   /password_resets(.:format)              password_resets#create
     new_password_reset GET    /password_resets/new(.:format)          password_resets#new
    edit_password_reset GET    /password_resets/:id/edit(.:format)     password_resets#edit
         password_reset PATCH  /password_resets/:id(.:format)          password_resets#update
                        PUT    /password_resets/:id(.:format)          password_resets#update
             microposts POST   /microposts(.:format)                   microposts#create
              micropost DELETE /microposts/:id(.:format)               microposts#destroy
=end
end
