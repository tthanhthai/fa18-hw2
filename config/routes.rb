Rails.application.routes.draw do
  root "main#index"
  get 'cities/view'
	get 'cities/new'
  get 'cities/update'
  post 'cities/create', to: 'cities#create'
  post 'cities/update_post', to:'cities#update_post'
end
