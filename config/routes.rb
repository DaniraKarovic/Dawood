Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
   root 'home#index'
   get "/contact" => "home#contact"
   post "/sendemail" => "home#sendemail"
   resources :products
   namespace :admin do
     resources :products
   end

end
