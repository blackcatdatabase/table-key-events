<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – key_events

Operational log for crypto key lifecycle and usage.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| key_id | BIGINT | YES | — | Key (FK crypto_keys.id), optional. |  |
| basename | VARCHAR(100) | YES | — | Key basename, if id not present. |  |
| event_type | TEXT | NO | — | Event type. | enum: created, rotated, activated, retired, compromised, deleted, used_encrypt, used_decrypt, access_failed, backup, restore |
| actor_id | BIGINT | YES | — | Actor (FK users.id), optional. |  |
| job_id | BIGINT | YES | — | Batch/job id, optional. |  |
| note | TEXT | YES | — | Free-form note. |  |
| meta | JSONB | YES | — | JSON meta about event. |  |
| source | TEXT | NO | 'admin' | Origin of event. | enum: cron, admin, api, manual |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp (UTC). |  |