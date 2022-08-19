Rails.application.routes.draw do
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[create new]
  end
  resources :lists, only: :destroy
  resources :bookmarks, only: :destroy
end
