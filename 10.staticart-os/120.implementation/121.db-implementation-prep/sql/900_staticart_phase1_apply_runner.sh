#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$(cd "$(dirname "$0")" && pwd)"

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

for file in \
  "$BASE/001_staticart_schema_and_enums.sql" \
  "$BASE/010_staticart_asset_master.sql" \
  "$BASE/020_staticart_asset_version.sql" \
  "$BASE/030_staticart_files_and_metadata.sql" \
  "$BASE/040_staticart_policy_and_commerce.sql" \
  "$BASE/050_staticart_review_and_audit.sql" \
  "$BASE/060_staticart_entitlement_and_continuity.sql" \
  "$BASE/070_staticart_projection_tables.sql"
do
  [ -f "$file" ] || { printf 'ERROR: missing SQL file: %s\n' "$file"; exit 1; }
done

printf 'APPLY: StaticArtOS Phase 1 to PERSONA_DATABASE_URL (single transaction)\n'
psql "$PERSONA_DATABASE_URL" -X -q -1 -v ON_ERROR_STOP=1 \
  -f "$BASE/001_staticart_schema_and_enums.sql" \
  -f "$BASE/010_staticart_asset_master.sql" \
  -f "$BASE/020_staticart_asset_version.sql" \
  -f "$BASE/030_staticart_files_and_metadata.sql" \
  -f "$BASE/040_staticart_policy_and_commerce.sql" \
  -f "$BASE/050_staticart_review_and_audit.sql" \
  -f "$BASE/060_staticart_entitlement_and_continuity.sql" \
  -f "$BASE/070_staticart_projection_tables.sql"

printf '\n============================================================\n'
printf 'STATICART PHASE1 SQL APPLY DONE\n'
printf '============================================================\n'
