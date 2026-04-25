#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 BINDING SMOKE CHECK\n'
printf '============================================================\n'

check_pattern() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -q "$pattern" "$file"; then
    echo "OK  $label"
  else
    echo "NG  $label"
  fi
}

check_pattern "$SRCBASE/helpers/../repositories/helpers/entitlement-resolution.ts" "resolveEffectiveEntitlementState" "entitlement resolution helper exists"
check_pattern "$SRCBASE/helpers/../repositories/helpers/entitlement-resolution.ts" "canCreateFullAccessSession" "full access helper exists"
check_pattern "$SRCBASE/helpers/../repositories/helpers/entitlement-resolution.ts" "canCreateSampleAccessSession" "sample access helper exists"

check_pattern "$SRCBASE/helpers/../repositories/helpers/library-continuity.ts" "deriveLibraryProjectionFlags" "library projection helper exists"
check_pattern "$SRCBASE/helpers/../repositories/helpers/library-continuity.ts" "favoriteMustSurviveEntitlementLoss" "favorite persistence helper exists"

check_pattern "$SRCBASE/repositories/sql/staticart-entitlement-resolution-sql.ts" "selectEntitlementResolutionInputs" "entitlement resolution SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-access-session-sql.ts" "selectAccessSessionEligibility" "access session SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-library-projection-refresh-sql.ts" "selectLibraryProjectionInputs" "library projection refresh SQL exists"

check_pattern "$SRCBASE/services/entitlement-service.ts" "getEffectiveEntitlement" "EntitlementService.getEffectiveEntitlement exists"
check_pattern "$SRCBASE/services/entitlement-service.ts" "reflectPurchase" "EntitlementService.reflectPurchase exists"
check_pattern "$SRCBASE/services/entitlement-service.ts" "reflectSubscription" "EntitlementService.reflectSubscription exists"

check_pattern "$SRCBASE/services/library-service.ts" "getLibrary" "LibraryService.getLibrary exists"
check_pattern "$SRCBASE/services/library-service.ts" "getContinueReading" "LibraryService.getContinueReading exists"
check_pattern "$SRCBASE/services/library-service.ts" "getContinueViewing" "LibraryService.getContinueViewing exists"
check_pattern "$SRCBASE/services/library-service.ts" "saveReaderProgress" "LibraryService.saveReaderProgress exists"
check_pattern "$SRCBASE/services/library-service.ts" "saveViewerProgress" "LibraryService.saveViewerProgress exists"
check_pattern "$SRCBASE/services/library-service.ts" "addFavorite" "LibraryService.addFavorite exists"
check_pattern "$SRCBASE/services/library-service.ts" "deleteFavorite" "LibraryService.deleteFavorite exists"
check_pattern "$SRCBASE/services/library-service.ts" "createAnnotation" "LibraryService.createAnnotation exists"

check_pattern "$SRCBASE/repositories/entitlement-repository.impl.ts" "getEffectiveEntitlement" "EntitlementRepositoryImpl.getEffectiveEntitlement exists"
check_pattern "$SRCBASE/repositories/entitlement-repository.impl.ts" "reflectPurchase" "EntitlementRepositoryImpl.reflectPurchase exists"
check_pattern "$SRCBASE/repositories/entitlement-repository.impl.ts" "reflectSubscription" "EntitlementRepositoryImpl.reflectSubscription exists"

check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "getLibrary" "LibraryRepositoryImpl.getLibrary exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "getContinueReading" "LibraryRepositoryImpl.getContinueReading exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "getContinueViewing" "LibraryRepositoryImpl.getContinueViewing exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "saveReaderProgress" "LibraryRepositoryImpl.saveReaderProgress exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "saveViewerProgress" "LibraryRepositoryImpl.saveViewerProgress exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "addFavorite" "LibraryRepositoryImpl.addFavorite exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "deleteFavorite" "LibraryRepositoryImpl.deleteFavorite exists"
check_pattern "$SRCBASE/repositories/library-repository.impl.ts" "createAnnotation" "LibraryRepositoryImpl.createAnnotation exists"

check_pattern "$SRCBASE/repositories/db-client.ts" "PERSONA_DATABASE_URL" "repository db client still assumes PERSONA_DATABASE_URL"
