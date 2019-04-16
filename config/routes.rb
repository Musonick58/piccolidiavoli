Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"


  resources :home, :only => [:index] do 
  	get :team,       :on => :collection
  	get :tempio,     :on => :collection
  	get :calendario, :on => :collection
  end

  match 'team',       via: [:get], :to => "home#team"
  match 'tempio',     via: [:get], :to => "home#tempio"
  match 'calendario', via: [:get], :to => "home#calendario"


end
