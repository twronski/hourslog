json.extract! report, :id, :user_id, :project_id, :status, :description, :created_at, :updated_at
json.url report_url(report, format: :json)
