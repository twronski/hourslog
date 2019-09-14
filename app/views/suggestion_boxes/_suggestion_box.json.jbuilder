json.extract! suggestion_box, :id, :name, :description, :status, :created_at, :updated_at
json.url suggestion_box_url(suggestion_box, format: :json)
