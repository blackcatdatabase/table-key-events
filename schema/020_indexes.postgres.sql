-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  key_events

CREATE INDEX IF NOT EXISTS idx_key_events_key_created ON key_events (key_id, created_at);

CREATE INDEX IF NOT EXISTS idx_key_events_basename ON key_events (basename);
