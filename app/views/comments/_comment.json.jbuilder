json.extract! comment, :id, :content, :type, :users_id, :review_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)