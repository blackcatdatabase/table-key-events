-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  key_events
-- Contract view for [key_events]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_key_events AS
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
