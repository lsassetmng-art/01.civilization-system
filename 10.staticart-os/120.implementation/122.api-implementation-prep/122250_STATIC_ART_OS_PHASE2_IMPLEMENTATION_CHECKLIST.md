# ============================================================
# STATIC ART OS PHASE2 IMPLEMENTATION CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

phase_objective:
Phase 2 is complete when the creator-side write backbone is
bound end-to-end with canonical validator, guard, service,
repository, and response/error handling.

check_items:
  route_layer:
    - AssetsRoute.createAsset exists
    - AssetsRoute.getAssetDetail exists
    - AssetsRoute.putLocalization exists
    - AssetsRoute.putRightsPolicy exists
    - AssetsRoute.putSalesOffer exists
    - AssetsRoute.putSubscriptionRule exists
    - routes do not embed SQL directly
    - routes return canonical success/error envelopes

  validator_layer:
    - version_token validation exists for governed writes
    - required string checks exist where expected
    - sales offer validation path exists
    - rights policy validation path exists
    - subscription rule validation path exists

  guard_layer:
    - requireActor binding exists on creator-side writes
    - ownership/publisher boundary guard path exists
    - review_pending block path exists
    - permission is checked before repository access

  service_layer:
    - AssetService.createDraft bound
    - AssetService.getAssetDetail bound
    - AssetService.upsertLocalization bound
    - AssetService.updateRightsPolicy bound
    - AssetService.updateSalesOffer bound
    - AssetService.updateSubscriptionRule bound
    - services do not construct raw HTTP responses

  repository_layer:
    - AssetRepositoryImpl exists
    - db-client.ts exists
    - staticart-asset-sql.ts exists
    - repository uses PERSONA_DATABASE_URL assumption
    - repository does not decide permission
    - repository does not return HTTP responses

  envelope_layer:
    - success() helper exists
    - errorFromException() helper exists
    - StaticArtError exists
    - canonical error codes are present

phase_2_complete_definition:
  - creator-side write backbone is structurally bound
  - Persona-side DB binding direction is fixed
  - route -> validator -> guard -> service -> repository chain is visible
  - canonical response/error envelope direction is fixed
