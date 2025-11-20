-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  key_events
ALTER TABLE key_events ADD CONSTRAINT fk_key_events_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE SET NULL;

ALTER TABLE key_events ADD CONSTRAINT fk_key_events_actor FOREIGN KEY (actor_id) REFERENCES users(id) ON DELETE SET NULL;
