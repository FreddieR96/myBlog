Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'main#home'
post 'backend/login', to: 'backend#login', as: :backend_login
get 'backend/menu', to: 'backend#menu', as: :backend_menu
get 'backend/start', to: 'backend#start', as: :backend_start
get 'archive', to: 'main#archive', as: :archive
get 'backend/destroyarticle/:id', to: 'backend#destroyarticle', as: :destroy_article
post 'addemail', to: 'email#addemail', as: :addemail
resources :articles, except: [:index, :destroy], param: :abv_title
end
