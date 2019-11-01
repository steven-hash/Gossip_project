Rails.application.routes.draw do
   root 'page#wow'
  
   get 'team' => 'team#index'
 
   get 'about' => 'contact#about'

   
    resources :cities
    resources :users
    resources :posts

   get 'welcome/:first_name' => 'landing_page#welcome'
end
