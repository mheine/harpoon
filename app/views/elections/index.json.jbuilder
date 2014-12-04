json.array!(@elections) do |election|
  json.extract! election, :id, :name, :occurs_on, :published_on, :description
  json.url election_url(election, format: :json)
end
