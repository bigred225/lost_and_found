json.extract! found_item, :id, :name, :description, :location, :date_found, :expiration_date, :created_at, :updated_at
json.url found_item_url(found_item, format: :json)
