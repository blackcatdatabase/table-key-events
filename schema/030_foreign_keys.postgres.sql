-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  key_events

ALTER TABLE key_events ADD CONSTRAINT fk_key_events_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE SET NULL;

ALTER TABLE key_events ADD CONSTRAINT fk_key_events_actor FOREIGN KEY (actor_id) REFERENCES users(id) ON DELETE SET NULL;
