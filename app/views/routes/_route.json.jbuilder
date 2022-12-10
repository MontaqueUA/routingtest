json.extract! route, :id, :starts_at, :ends_at, :travel_time, :total_stops, :organization_id, :driver_id, :vehicle_id, :created_at, :updated_at
json.url route_url(route, format: :json)
