json.extract! freepost, :id, :title, :content, :created_at, :updated_at
json.url freepost_url(freepost, format: :json)
