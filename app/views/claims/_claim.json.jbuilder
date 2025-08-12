json.extract! claim, :id, :user_id, :found_item_id, :expiration_date, :created_at, :updated_at
json.url claim_url(claim, format: :json)
