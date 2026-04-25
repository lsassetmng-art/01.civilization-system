#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$SRCBASE/repositories/helpers/entitlement-resolution.ts"
check_file "$SRCBASE/repositories/helpers/library-continuity.ts"
check_file "$SRCBASE/repositories/sql/staticart-entitlement-resolution-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-access-session-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-library-projection-refresh-sql.ts"
check_file "$SRCBASE/repositories/entitlement-repository.impl.ts"
check_file "$SRCBASE/repositories/library-repository.impl.ts"
check_file "$SRCBASE/services/entitlement-service.ts"
check_file "$SRCBASE/services/library-service.ts"
check_file "$SRCBASE/routes/internal.route.ts"
check_file "$SRCBASE/routes/library.route.ts"
