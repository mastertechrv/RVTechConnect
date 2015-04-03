json.array!(@rvmodels) do |rvmodel|
  json.extract! rvmodel, :id, :modelname
  json.url rvmodel_url(rvmodel, format: :json)
end
