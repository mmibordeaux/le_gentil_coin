json.extract! offer, :id, :name, :image, :description, :price, :user_id, :created_at, :updated_at
json.url offer_url(offer, format: :json)
