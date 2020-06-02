Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "games#query_params_action"
    get "/query_numbers_url" => "games#query_numbers_action"
    get "/segment_guess_url/:number" =>
    "games#query_numbers_action"
    post "/body_params_url" =>
    "games#body_params_action"
    post "/body_password_url" =>
    "games#body_user_password"
  end
end
