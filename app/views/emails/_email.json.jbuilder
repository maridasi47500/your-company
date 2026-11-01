json.extract! email, :id, :from, :to, :subject, :content, :attachment, :created_at, :updated_at
json.url email_url(email, format: :json)
