json.extract! user, :id, :pseudonym, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
