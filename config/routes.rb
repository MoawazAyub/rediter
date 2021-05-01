Rails.application.routes.draw do
  namespace :api, default: {format: 'json'} do
    resources :cyber_infos, only: %i[index]
  end
end
