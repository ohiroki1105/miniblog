Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: 'miniblogs#index'
    resources :miniblogs, only: [:index, :new, :create, :destroy, :edit, :update]
end
