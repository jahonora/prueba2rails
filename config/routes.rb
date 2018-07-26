Rails.application.routes.draw do
  resources :tasks do
  	member do
  		delete 'undone', to: 'tasks#undone', as: 'undone'
  		post 'done', to: 'tasks#done', as: 'done'
  	end
  end
  devise_for :users
  root to: 'tasks#index'
end
