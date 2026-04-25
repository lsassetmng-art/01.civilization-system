#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE3 FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$SRCBASE/repositories/helpers/lifecycle-transition.ts"
check_file "$SRCBASE/repositories/sql/staticart-governance-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-audit-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-projection-queue-sql.ts"
check_file "$SRCBASE/repositories/asset-repository.impl.ts"
check_file "$SRCBASE/routes/assets.route.ts"
check_file "$SRCBASE/routes/review.route.ts"
check_file "$SRCBASE/services/asset-service.ts"
