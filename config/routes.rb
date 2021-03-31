Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  defaults format: :json do
    get 'english', to: 'phrases#english'
    get 'german', to: 'phrases#german'
    get 'irish', to: 'phrases#irish'
  end
end
