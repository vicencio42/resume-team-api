Rails.application.routes.draw do

  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/:id" => "students#show"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  get "/educations" => "educations#index"

  get "/experiences" => "experiences#index"

  get "/skills" => "skills#index"

  get "/capstones" => "capstones#index"
end
