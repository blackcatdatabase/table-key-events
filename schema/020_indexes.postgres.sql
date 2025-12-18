-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  key_events

CREATE INDEX IF NOT EXISTS idx_key_events_key_created ON key_events (key_id, created_at);

CREATE INDEX IF NOT EXISTS idx_key_events_basename ON key_events (basename);
