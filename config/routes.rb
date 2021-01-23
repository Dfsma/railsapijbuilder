Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :products, only: :index
  end
  resources :products do
    get 'page/:page', action: :paginate, on: :collection
  end

  resources :searchs do
    #get '', action: :filter, on: :collection
  end
 
end
