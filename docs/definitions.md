# key_events

Operational log for crypto key lifecycle and usage.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| actor_id | BIGINT | YES |  | Actor (FK users.id), optional. |
| basename | VARCHAR(100) | YES |  | Key basename, if id not present. |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp (UTC). |
| event_type | ENUM('created','rotated','activated','retired','compromised','deleted','used_encrypt','used_decrypt','access_failed','backup','restore') | NO |  | Event type. (enum: created, rotated, activated, retired, compromised, deleted, used_encrypt, used_decrypt, access_failed, backup, restore) |
| id | BIGINT | NO |  | Surrogate primary key. |
| job_id | BIGINT | YES |  | Batch/job id, optional. |
| key_id | BIGINT | YES |  | Key (FK crypto_keys.id), optional. |
| meta | JSON | YES |  | JSON meta about event. |
| note | TEXT | YES |  | Free-form note. |
| source | ENUM('cron','admin','api','manual') | NO | admin | Origin of event. (enum: cron, admin, api, manual) |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_key_events_basename | basename | CREATE INDEX idx_key_events_basename ON key_events (basename) |
| idx_key_events_key_created | key_id,created_at | INDEX idx_key_events_key_created (key_id, created_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_key_events_actor | actor_id | users(id) | ON DELETE SET |
| fk_key_events_key | key_id | crypto_keys(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_key_events_basename | basename | CREATE INDEX IF NOT EXISTS idx_key_events_basename ON key_events (basename) |
| idx_key_events_key_created | key_id,created_at | CREATE INDEX IF NOT EXISTS idx_key_events_key_created ON key_events (key_id, created_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_key_events_actor | actor_id | users(id) | ON DELETE SET |
| fk_key_events_key | key_id | crypto_keys(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_key_events | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_key_events | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
