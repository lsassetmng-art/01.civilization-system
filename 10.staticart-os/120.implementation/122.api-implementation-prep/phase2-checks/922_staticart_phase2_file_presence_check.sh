#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep"
SRCBASE="$BASE/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE2 FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$SRCBASE/contracts/types.ts"
check_file "$SRCBASE/contracts/dto.ts"
check_file "$SRCBASE/core/error-codes.ts"
check_file "$SRCBASE/core/errors.ts"
check_file "$SRCBASE/core/response.ts"
check_file "$SRCBASE/guards/permission-guard.ts"
check_file "$SRCBASE/validators/request-validators.ts"
check_file "$SRCBASE/services/asset-service.ts"
check_file "$SRCBASE/services/entitlement-service.ts"
check_file "$SRCBASE/services/library-service.ts"
check_file "$SRCBASE/services/projection-service.ts"
check_file "$SRCBASE/routes/assets.route.ts"
check_file "$SRCBASE/routes/review.route.ts"
check_file "$SRCBASE/routes/library.route.ts"
check_file "$SRCBASE/routes/internal.route.ts"
check_file "$SRCBASE/repositories/db-client.ts"
check_file "$SRCBASE/repositories/asset-repository.impl.ts"
check_file "$SRCBASE/repositories/entitlement-repository.impl.ts"
check_file "$SRCBASE/repositories/library-repository.impl.ts"
check_file "$SRCBASE/repositories/projection-repository.impl.ts"
check_file "$SRCBASE/repositories/sql/staticart-asset-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-entitlement-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-library-sql.ts"
check_file "$SRCBASE/repositories/sql/staticart-projection-sql.ts"
