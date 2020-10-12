json.extract! subject, :id, :user_id, :name, :start_time, :end_time, :created_at, :updated_at
json.url subject_url(subject, format: :json)
