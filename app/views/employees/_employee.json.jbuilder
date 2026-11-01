json.extract! employee, :id, :fullname, :email, :password, :pic, :dob, :company, :city, :gender, :description, :created_at, :updated_at
json.url employee_url(employee, format: :json)
