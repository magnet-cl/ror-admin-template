RorAdminTemplate::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users do
    match '/login' => 'devise/sessions#new'
  end

end
