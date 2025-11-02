-- Auto-generated from schema-map-postgres.psd1 (map@db2f8b8)
-- engine: postgres
-- table:  key_events
CREATE INDEX IF NOT EXISTS idx_key_events_key_created ON key_events (key_id, created_at);

CREATE INDEX IF NOT EXISTS idx_key_events_basename ON key_events (basename);
