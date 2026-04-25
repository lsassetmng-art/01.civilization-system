# ============================================================
# STATIC ART OS PHASE 2 VALIDATOR / GUARD BINDING MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

route_validator_guard_map:
  create_asset:
    validators:
      - requireString(asset_type)
      - requireString(creator_id)
      - requireString(initial_language_code)
    guards:
      - requireActor(creator_owner | publisher_operator)

  get_asset_detail:
    validators:
      - asset_id present
    guards:
      - surface visibility guard only

  put_localization:
    validators:
      - requireVersionToken(version_token)
      - requireString(language_code)
      - requireString(title)
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

  put_rights_policy:
    validators:
      - requireVersionToken(version_token)
      - region_mode enum validation
      - region_codes consistency validation
      - exhibition_allowed boolean
      - age_rating required
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

  put_sales_offer:
    validators:
      - requireVersionToken(version_token)
      - sale_type required
      - sales_state required
      - price rule validation
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

  put_subscription_rule:
    validators:
      - requireVersionToken(version_token)
      - subscription_state required
      - subscription_eligible consistency validation
    guards:
      - requireActor(creator_owner | publisher_operator)
      - requireAssetOwnershipOrPublisherAccess
      - requireNotReviewPending

guard_rules:
  - permission is checked before service execution
  - review_pending prevents creator-side governed writes
  - repository layer must not re-decide permission as primary logic

validator_rules:
  - validators check request shape and field semantics
  - business lifecycle rules may still fail inside service/repository path
