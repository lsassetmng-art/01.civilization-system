#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/121.db-implementation-prep/sql"

run_sql() {
  local file="$1"
  printf '\n============================================================\n'
  printf 'APPLY: %s\n' "$file"
  printf '============================================================\n'
  psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -f "$file"
}

run_sql "$BASE/001_staticart_schema_and_enums.sql"
run_sql "$BASE/010_staticart_asset_master.sql"
run_sql "$BASE/020_staticart_asset_version.sql"
run_sql "$BASE/030_staticart_files_and_metadata.sql"
run_sql "$BASE/040_staticart_policy_and_commerce.sql"
run_sql "$BASE/050_staticart_review_and_audit.sql"
run_sql "$BASE/060_staticart_entitlement_and_continuity.sql"
run_sql "$BASE/070_staticart_projection_tables.sql"

printf '\n============================================================\n'
printf 'STATICART PHASE1 SQL APPLY DONE\n'
printf '============================================================\n'
