Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"


  resources :home, :only => [:index] do 
  	get :team,       :on => :collection
  	get :tempio,     :on => :collection
  	get :calendario, :on => :collection
  end

  resources :ftp 
  
  match 'team',              via: [:get], :to => "home#team"
  match 'tempio',            via: [:get], :to => "home#tempio"
  match 'calendario',        via: [:get], :to => "home#calendario"
  match '/alessandro',       via: [:get], :to => "home#alessandro"
  match '/federico',         via: [:get], :to => "home#federico"
  match '/andrea',           via: [:get], :to => "home#andrea"
  match '/iago',             via: [:get], :to => "home#iago"
  match '/franco',           via: [:get], :to => "home#franco"
  match '/giovanni',         via: [:get], :to => "home#giovanni"
  match '/emanuele',         via: [:get], :to => "home#emanuele"
  match '/policy',           via: [:get], :to => "home#privacy"
  match '/ftp',              via: [:get], :to => "ftp#index"

end
