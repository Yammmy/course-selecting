Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get "/students/:id"  => "students#show"
      get "/teachers"      => "teachers#index"
    end
  end
end
