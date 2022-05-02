json.extract! address, :id, :country, :city, :street, :postal_code, :created_at, :updated_at
json.url address_url(address, format: :json)
