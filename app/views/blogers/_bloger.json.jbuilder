json.extract! bloger, :id, :title, :body, :created_at, :updated_at
json.url bloger_url(bloger, format: :json)
