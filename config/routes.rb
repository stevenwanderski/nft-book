Rails.application.routes.draw do
  root 'pages#home'
  post 'pages/update'
end
