json.extract! doc_template, :id, :title, :description, :created_at, :updated_at
json.url doc_template_url(doc_template, format: :json)
