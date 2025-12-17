-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  key_events

CREATE TABLE IF NOT EXISTS key_events (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  key_id BIGINT UNSIGNED NULL,
  basename VARCHAR(100) NULL,
  event_type ENUM('created','rotated','activated','retired','compromised','deleted','used_encrypt','used_decrypt','access_failed','backup','restore') NOT NULL,
  actor_id BIGINT UNSIGNED NULL,
  job_id BIGINT UNSIGNED NULL,
  note TEXT NULL,
  meta JSON NULL,
  `source` ENUM('cron','admin','api','manual') NOT NULL DEFAULT 'admin',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  INDEX idx_key_events_key_created (key_id, created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
