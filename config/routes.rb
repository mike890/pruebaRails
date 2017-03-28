Rails.application.routes.draw do
  get 'pages/batman'

  get 'pages/superman'

  get 'pages/batmanvssuperman'

  post 'pages/voto_superman'

  post 'pages/voto_batman'

  root 'pages#batmanvssuperman'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
