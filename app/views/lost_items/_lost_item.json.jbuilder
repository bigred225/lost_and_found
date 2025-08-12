json.extract! lost_item, :id, :private_entry, :name, :description, :date_lost, :location_lost, :expiration_date, :created_at, :updated_at
json.url lost_item_url(lost_item, format: :json)
