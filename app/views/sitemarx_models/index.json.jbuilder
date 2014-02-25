json.array!(@sitemarx_models) do |sitemarx_model|
  json.extract! sitemarx_model, :id, :url, :name, :saved_at
  json.url sitemarx_model_url(sitemarx_model, format: :json)
end
