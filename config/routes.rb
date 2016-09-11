Rails.application.routes.draw do


get '/cart/:order_id', to: 'kpiquas#cart', as: 'order_cart'

post '/new_order', to: 'orders#new_order'

post '/update_order', to: 'orders#update_order'

post '/sold_to_user', to: 'users#sold_order'

get '/sell/:order_id', to: 'kpiquas#sell', as: 'sell_cart'

get '/sold/:order_id', to: 'kpiquas#sold', as: 'sold_cart'

root 'kpiquas#homepage'

 namespace "admin" do
    resources :pockets
    resources :bases
   end

 namespace :api do
    namespace :v1 do
        resources :bases, only: [:index, :show]
        resources :pockets, only: [:index, :show]
    end
 end
end
