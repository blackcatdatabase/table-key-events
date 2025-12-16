-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  key_events

CREATE INDEX IF NOT EXISTS idx_key_events_key_created ON key_events (key_id, created_at);

CREATE INDEX IF NOT EXISTS idx_key_events_basename ON key_events (basename);
