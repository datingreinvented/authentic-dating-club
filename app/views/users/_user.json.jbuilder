json.extract! user, :id, :name, :provider, :uid, :role, :email, :prefs, :facebook_id, :street_address, :city, :state, :zip, :phone_no, :created_at, :updated_at
json.url user_url(user, format: :json)
