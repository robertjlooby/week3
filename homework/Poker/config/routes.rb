Poker::Application.routes.draw do
	root :to => "poker#index"
	
	get "/poker", :controller => "poker", :action => "index", :as => "poker"
end
