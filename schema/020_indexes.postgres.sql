-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  key_events
CREATE INDEX idx_key_events_key_created ON key_events (key_id, created_at);

CREATE INDEX idx_key_events_basename ON key_events (basename);
