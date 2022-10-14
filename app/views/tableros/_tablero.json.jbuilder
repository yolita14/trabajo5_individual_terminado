json.extract! tablero, :id, :fecha, :publicacion_id, :usuario_id, :created_at, :updated_at
json.url tablero_url(tablero, format: :json)
