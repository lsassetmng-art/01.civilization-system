#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE3 BINDING SMOKE CHECK\n'
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

check_pattern "$SRCBASE/routes/assets.route.ts" "runSelfCheck" "AssetsRoute.runSelfCheck exists"
check_pattern "$SRCBASE/routes/review.route.ts" "createReviewRequest" "ReviewRoute.createReviewRequest exists"
check_pattern "$SRCBASE/routes/review.route.ts" "decideReview" "ReviewRoute.decideReview exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "publishMarketplace" "AssetsRoute.publishMarketplace exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "publishLibraryOnly" "AssetsRoute.publishLibraryOnly exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "delist" "AssetsRoute.delist exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "restrict" "AssetsRoute.restrict exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "archive" "AssetsRoute.archive exists"

check_pattern "$SRCBASE/services/asset-service.ts" "runSelfCheck" "AssetService.runSelfCheck exists"
check_pattern "$SRCBASE/services/asset-service.ts" "createReviewRequest" "AssetService.createReviewRequest exists"
check_pattern "$SRCBASE/services/asset-service.ts" "decideReview" "AssetService.decideReview exists"
check_pattern "$SRCBASE/services/asset-service.ts" "publishMarketplace" "AssetService.publishMarketplace exists"
check_pattern "$SRCBASE/services/asset-service.ts" "publishLibraryOnly" "AssetService.publishLibraryOnly exists"
check_pattern "$SRCBASE/services/asset-service.ts" "delist" "AssetService.delist exists"
check_pattern "$SRCBASE/services/asset-service.ts" "restrict" "AssetService.restrict exists"
check_pattern "$SRCBASE/services/asset-service.ts" "archive" "AssetService.archive exists"

check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "runSelfCheck" "AssetRepositoryImpl.runSelfCheck exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "createReviewRequest" "AssetRepositoryImpl.createReviewRequest exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "decideReview" "AssetRepositoryImpl.decideReview exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "publishMarketplace" "AssetRepositoryImpl.publishMarketplace exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "publishLibraryOnly" "AssetRepositoryImpl.publishLibraryOnly exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "delist" "AssetRepositoryImpl.delist exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "restrict" "AssetRepositoryImpl.restrict exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "archive" "AssetRepositoryImpl.archive exists"

check_pattern "$SRCBASE/repositories/helpers/lifecycle-transition.ts" "assertLifecycleTransition" "lifecycle transition helper exists"
check_pattern "$SRCBASE/repositories/sql/staticart-governance-sql.ts" "insertReviewRequest" "review request SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-governance-sql.ts" "insertReviewDecision" "review decision SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-audit-sql.ts" "insertAuditEvent" "audit SQL exists"
check_pattern "$SRCBASE/repositories/sql/staticart-projection-queue-sql.ts" "enqueueProjectionRefreshSkeleton" "projection queue SQL exists"
