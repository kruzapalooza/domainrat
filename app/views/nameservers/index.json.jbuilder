json.array!(@nameservers) do |nameserver|
  json.extract! nameserver, :id
  json.url nameserver_url(nameserver, format: :json)
end
