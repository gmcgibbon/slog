Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: :application, action: :welcome
  resources :blogs, only: %i(new create show) do
    resource :posts do
      resource :comment, only: %i(create)
    end
  end
end
