Trocalivro::Application.routes.draw do
  
	resources :pessoas
  root :to => 'pessoas#index'

end
