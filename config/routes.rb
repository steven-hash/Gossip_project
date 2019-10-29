Rails.application.routes.draw do
   root 'page#wow'
  
   get 'team' => 'team#index'
 
   get 'about' => 'contact#about'


    #resources :team

   get 'welcome/:first_name' => 'landing_page#welcome'
end
