# APP_COMMON SUPABASE MIGRATION RUNNER CANONICAL

status: canonical
system: CommonOS
layer: implementation

## Purpose
This document defines the canonical Termux / psql-oriented runner pattern for the app_common execution-ready migration bundle.

## Important note
The actual target connection variable is intentionally unresolved at CommonOS design level. Map the bundle to the correct target DB URL for the actual deployment track.

## Canonical runner shape

```bash
set -eu

TARGET_DB_URL="${TARGET_DB_URL:?TARGET_DB_URL is required}"
TMP_DIR="/data/data/com.termux/files/home/.tmp/app_common_bundle_run"
BUNDLE_SQL="$TMP_DIR/app_common_bundle.sql"

mkdir -p "$TMP_DIR"

cat > "$BUNDLE_SQL" <<'SQL'
\set ON_ERROR_STOP on
\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000100_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER1.sql
\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000103_APP_COMMON_RLS_SQL_DRAFT_TIER1.sql
\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000104_APP_COMMON_PUBLISHED_READ_VIEW_SQL_DRAFT_TIER1.sql
SQL

psql "$TARGET_DB_URL" -v ON_ERROR_STOP=1 -f "$BUNDLE_SQL"
```

## Runner rules
- use absolute paths
- use additive-only SQL
- run first in a safe non-production environment
- verify role posture before production apply
- do not improvise ad-hoc file ordering
