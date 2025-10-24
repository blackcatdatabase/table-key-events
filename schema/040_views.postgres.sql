-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-10-24T09:45:40Z)
-- engine: postgres
-- table:  key_events
-- Contract view for [key_events]
CREATE OR REPLACE VIEW vw_key_events AS
SELECT
  id,
  key_id,
  basename,
  event_type,
  actor_id,
  job_id,
  note,
  meta,
  source,
  created_at
FROM key_events;
