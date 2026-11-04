json.extract! companymessage, :id, :company_id, :employee_id, :content, :pic, :created_at, :updated_at
json.url companymessage_url(companymessage, format: :json)
