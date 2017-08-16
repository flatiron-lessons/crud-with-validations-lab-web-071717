Rails.application.routes.draw do
	resources :songs, only: [:create, :new, :edit, :show, :index, :update, :destroy]
end
