json.extract! meeting_point, :id, :name, :remarks, :memories, :created_at, :updated_at
json.url meeting_point_url(meeting_point, format: :json)
