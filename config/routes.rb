Commander::Application.routes.draw do
  resources :nodes do
    member do
      get :children
    end
  end

  root :to => 'nodes#index'
end
