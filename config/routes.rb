Rails.application.routes.draw do
  root to: "pages#index"

  controller :pages do
    # get "about-us", action: "about_us"
    # get "collection", action: "collection"
    # get "help", action: "help"
    # get "publications", action: "publications"
    # get "contact-us", action: "contact_us"
  end

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # mount Ckeditor::Engine => '/ckeditor'
  #devise_for :users


  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end