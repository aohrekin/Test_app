json.extract! person, :id, :first_name, :last_name, :second_name, :birthday, :sex, :post_id, :created_at, :updated_at
json.url person_url(person, format: :json)
