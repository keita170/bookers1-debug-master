Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  resources :books, only: [:show, :index, :edit, :create, :update]
  delete 'books/:id' => 'books#destroy', as:'destroy_book'
end
