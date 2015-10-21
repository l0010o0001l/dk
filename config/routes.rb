Rails.application.routes.draw do

  root 'welcome#index'

  resources "contacts", only: [:new, :create]

  match '/home',    to: 'welcome#index',    via: 'get'
  match '/about',   to: 'welcome#about',    via: 'get'
  match '/news', 	to: 'welcome#news', 	via: 'get'
  match '/contact', to: 'contact#new',  	via: 'get'

end
