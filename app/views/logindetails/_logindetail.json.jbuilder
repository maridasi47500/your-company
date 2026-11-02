json.extract! logindetail, :id, :email, :password, :created_at, :updated_at
json.url logindetail_url(logindetail, format: :json)
