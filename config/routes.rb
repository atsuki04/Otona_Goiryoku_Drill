Rails.application.routes.draw do

devise_for :customers,skip: [:passwords,], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  namespace :admin do
    root "homes#top"
    resources :genres, only: [:index, :create, :edit, :update]
    resources :questions, only: [:index, :new, :create, :show, :edit, :update]
  end
  
  scope module: :public do
    root "homes#top"
    resources :questions, only: [:index, :show] do 
      get :answer
      resource :favorites, only: [:create, :index, :destroy]
    end
  end

end