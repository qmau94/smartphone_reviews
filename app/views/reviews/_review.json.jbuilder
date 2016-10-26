json.extract! review, :id, :content, :mobile, :date, :users_id, :mobile_id, :created_at, :updated_at
json.url review_url(review, format: :json)