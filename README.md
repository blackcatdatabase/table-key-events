# 📦 Key Events

![SQL](https://img.shields.io/badge/SQL-MySQL%208.0%2B-4479A1?logo=mysql&logoColor=white) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-informational) ![Generated](https://img.shields.io/badge/generated-from%20schema--map-blue)

> Schema package for table **key_events** (repo: $slug).

## Files
```
schema/
  001_table.sql
  020_indexes.sql
  030_foreign_keys.sql
```

## Quick apply
```bash
# Apply schema (Linux/macOS):
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/001_table.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/020_indexes.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/030_foreign_keys.sql
```

```powershell
# Apply schema (Windows PowerShell):
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/001_table.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/020_indexes.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/030_foreign_keys.sql
```

## Docker quickstart
```bash
# Spin up a throwaway MySQL and apply just this package:
docker run --rm -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=app -p 3307:3306 -d mysql:8
sleep 15
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/001_table.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/020_indexes.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/030_foreign_keys.sql
```

## Columns
| Column | Type | Null | Default | Extra |
|-------:|:-----|:----:|:--------|:------|
| id | BIGINT UNSIGNED | — | — | AUTO_INCREMENT, PK |
| key_id | BIGINT UNSIGNED | YES | — |  |
| basename | VARCHAR(100) | YES | — |  |
| event_type | ENUM(''created'',''rotated'',''activated'',''retired'',''compromised'',''deleted'',''used_encrypt'',''used_decrypt'',''access_failed'',''backup'',''restore'') | NO | — |  |
| actor_id | BIGINT UNSIGNED | YES | — |  |
| job_id | BIGINT UNSIGNED | YES | — |  |
| note | TEXT | YES | — |  |
| meta | JSON | YES | — |  |
| source | ENUM(''cron'',''admin'',''api'',''manual'') | NO | '' |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) |  |

## Relationships
- FK → **crypto_keys** via (key_id) (ON DELETE SET NULL).
- FK → **users** via (actor_id) (ON DELETE SET NULL).

```mermaid
erDiagram
  KEY_EVENTS {
    BIGINT id PK
    BIGINT key_id
    VARCHAR(100) basename
    ENUM(''created'',''rotated'',''activated'',''retired'',''compromised'',''deleted'',''used_encrypt'',''used_decrypt'',''access_failed'',''backup'',''restore'') event_type
    BIGINT actor_id
    BIGINT job_id
    TEXT note
    JSON meta
    ENUM(''cron'',''admin'',''api'',''manual'') source
    DATETIME(6) created_at
  }
  KEY_EVENTS }o--|| CRYPTO_KEYS : "key_id"
  KEY_EVENTS }o--|| USERS : "actor_id"
```

## Indexes
- 1 deferred index statement(s) in schema/020_indexes.sql.

## Notes
- Generated from the umbrella repository **blackcat-database** using `scripts/schema-map.psd1`.
- To change the schema, update the map and re-run the generators.

## License
Distributed under the **BlackCat Store Proprietary License v1.0**. See `LICENSE`.

