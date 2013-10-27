GuestbookSample::Application.routes.draw do
  resources :greetings, only: [:index, :create]
  root 'greetings#index'
end
