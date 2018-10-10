Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/random_fortune' => 'api/examples#fortune_method'
  get '/lotto_nums' => 'api/examples#lotto_action'
  get '/count' => 'api/examples#page_count'
end
