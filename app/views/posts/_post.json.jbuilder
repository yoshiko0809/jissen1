json.extract! post, :id, :title, :start_date, :end_date, :all_day, :memo, :created_at, :updated_at
json.url post_url(post, format: :json)
