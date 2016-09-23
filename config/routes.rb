Rails.application.routes.draw do

  resources :authors, only: [:show] do
    # Nested resources for posts
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  # Have to tell these routes which controller actions will handle them
  # Then we also have to make sure to update the authors_controller with the appropriate actions
  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/posts/:post_id', to: 'authors#post'
end
