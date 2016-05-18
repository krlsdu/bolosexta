json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :date, :cake_id, :person_id
  json.url meeting_url(meeting, format: :json)
end
