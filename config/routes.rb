Rails.application.routes.draw do
get "/employees" => "employees#index"
post "/employees/:id" => "employees#create"
get "/employees/:id" => "employees#show"
patch "/employees/:id" => "employees#update"

end
