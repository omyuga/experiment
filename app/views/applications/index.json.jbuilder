json.array!(@applications) do |application|
  json.extract! application, :id, :attachment
  json.url application_url(application, format: :json)
end
