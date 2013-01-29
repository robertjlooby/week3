Rps::Application.routes.draw do
	root :to => "rps#index"
	
	get "/rps", :controller => "rps", :action => "index", :as => "rps"
end
