#!/data/data/com.termux/files/usr/bin/bash
set -eu

SRCBASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/source-skeleton/staticart-api"

printf '\n============================================================\n'
printf 'STATICART PHASE2 BINDING SMOKE CHECK\n'
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

check_pattern "$SRCBASE/routes/assets.route.ts" "createAsset" "AssetsRoute.createAsset exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "getAssetDetail" "AssetsRoute.getAssetDetail exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putLocalization" "AssetsRoute.putLocalization exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putRightsPolicy" "AssetsRoute.putRightsPolicy exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putSalesOffer" "AssetsRoute.putSalesOffer exists"
check_pattern "$SRCBASE/routes/assets.route.ts" "putSubscriptionRule" "AssetsRoute.putSubscriptionRule exists"

check_pattern "$SRCBASE/routes/assets.route.ts" "requireActor" "route uses requireActor"
check_pattern "$SRCBASE/routes/assets.route.ts" "requireVersionToken" "route uses requireVersionToken"
check_pattern "$SRCBASE/guards/permission-guard.ts" "requireAssetOwnershipOrPublisherAccess" "ownership/publisher guard exists"
check_pattern "$SRCBASE/guards/permission-guard.ts" "requireNotReviewPending" "review_pending guard exists"

check_pattern "$SRCBASE/services/asset-service.ts" "createDraft" "AssetService.createDraft exists"
check_pattern "$SRCBASE/services/asset-service.ts" "upsertLocalization" "AssetService.upsertLocalization exists"
check_pattern "$SRCBASE/services/asset-service.ts" "updateRightsPolicy" "AssetService.updateRightsPolicy exists"
check_pattern "$SRCBASE/services/asset-service.ts" "updateSalesOffer" "AssetService.updateSalesOffer exists"
check_pattern "$SRCBASE/services/asset-service.ts" "updateSubscriptionRule" "AssetService.updateSubscriptionRule exists"

check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "createDraft" "AssetRepositoryImpl.createDraft exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "upsertLocalization" "AssetRepositoryImpl.upsertLocalization exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "updateRightsPolicy" "AssetRepositoryImpl.updateRightsPolicy exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "updateSalesOffer" "AssetRepositoryImpl.updateSalesOffer exists"
check_pattern "$SRCBASE/repositories/asset-repository.impl.ts" "updateSubscriptionRule" "AssetRepositoryImpl.updateSubscriptionRule exists"

check_pattern "$SRCBASE/repositories/db-client.ts" "PERSONA_DATABASE_URL" "repository db client uses PERSONA_DATABASE_URL assumption"
check_pattern "$SRCBASE/core/response.ts" "success(" "success envelope helper exists"
check_pattern "$SRCBASE/core/response.ts" "errorFromException" "error envelope helper exists"
check_pattern "$SRCBASE/core/errors.ts" "StaticArtError" "StaticArtError exists"
