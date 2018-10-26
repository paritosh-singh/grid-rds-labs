Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :board, :only => [:index] do    
  end
  resources :user, :only => [] do
    collection do 
      post 'change_color'
      post 'set_color'
    end
  end
end
