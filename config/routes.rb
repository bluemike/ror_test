Rails.application.routes.draw do

  resources :articles
  root :to => "articles#index"

    resources :restapi, :defaults => { :format => 'xml' }

end
