Trocalivro::Application.routes.draw do
  
	match '/pessoas', :to => 'pessoas#index'	
	resources :pessoas
  root :to => 'pessoas#index'

end
