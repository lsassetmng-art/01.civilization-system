#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  printf '%s\n' 'Export the target DB URL first, then rerun.'
  exit 1
fi

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-004 APPLY TEMPLATE (CANONICAL)'
printf '%s\n' '============================================================'
printf '%s\n' 'Environment variable: PERSONA_DATABASE_URL'
printf '%s\n' 'Dependencies: PKG-AIW-001 and PKG-AIW-002 should already be applied.'
printf '%s\n' 'Review requirement: 佐藤(DB担当) review is required before DB apply.'
printf '%s\n' "Package dir: $PKG_DIR"
printf '%s\n' '============================================================'

psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/001_create_roles_and_precheck.sql"
psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/002_create_rls_helper_functions_and_enable_rls.sql"
psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/003_create_rls_policies.sql"
psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$PKG_DIR/004_create_grants_and_execution_permissions.sql"

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-004 APPLY TEMPLATE FINISHED'
printf '%s\n' '============================================================'
