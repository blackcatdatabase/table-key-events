<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – key_events

Operational log for crypto key lifecycle and usage.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| key_id | BIGINT UNSIGNED | YES | — | Key (FK crypto_keys.id), optional. |  |
| basename | VARCHAR(100) | YES | — | Key basename, if id not present. |  |
| event_type | ENUM('created','rotated','activated','retired','compromised','deleted','used_encrypt','used_decrypt','access_failed','backup','restore') | NO | — | Event type. | enum: created, rotated, activated, retired, compromised, deleted, used_encrypt, used_decrypt, access_failed, backup, restore |
| actor_id | BIGINT UNSIGNED | YES | — | Actor (FK users.id), optional. |  |
| job_id | BIGINT UNSIGNED | YES | — | Batch/job id, optional. |  |
| note | TEXT | YES | — | Free-form note. |  |
| meta | JSON | YES | — | JSON meta about event. |  |
| source | ENUM('cron','admin','api','manual') | NO | ''admin'' | Origin of event. | enum: cron, admin, api, manual |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp (UTC). |  |