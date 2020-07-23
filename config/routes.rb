Rails.application.routes.draw do
  resources :posts do
    # Member --> Necesita un ID
    # Collection --> Para una colección de datos
    member do
      patch '/like' => :like
      patch '/dislike' => :dislike
    end
  end
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
