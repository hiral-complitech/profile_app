json.extract! profile, :id, :name, :address, :age, :height, :weight, :gender, :education, :description, :email, :created_at, :updated_at
json.url profile_url(profile, format: :json)
