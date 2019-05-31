Rails.application.routes.draw do
  resources :tarefas
  resources :status_tarefas
  resources :papeis
  resources :metas
  resources :triades
  resources :equilibrios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
