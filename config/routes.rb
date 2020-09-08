Rails.application.routes.draw do
  devise_for :users , controllers:{passwords: 'users/passwords', sessions: 'users/sessions'}
  root to: 'boards#index'
  resources :boards, only: [:index, :show, :new, :create]
end
