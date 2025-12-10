-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  key_events

CREATE INDEX IF NOT EXISTS idx_key_events_key_created ON key_events (key_id, created_at);

CREATE INDEX IF NOT EXISTS idx_key_events_basename ON key_events (basename);
