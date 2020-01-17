json.extract! user, :id, :name, :email, :contact_number, :remarks, :created_at, :updated_at
json.url user_url(user, format: :json)
