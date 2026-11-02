json.extract! post, :id, :employee_id, :content, :pic, :created_at, :updated_at
json.url post_url(post, format: :json)
