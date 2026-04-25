# ============================================================
# STATIC ART OS FIXTURE AND SEED SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

minimum_assets:
  - one publishing draft
  - one visual draft
  - one published marketplace asset
  - one library-only asset
  - one restricted asset
  - one delisted asset

minimum_users:
  - one owned_permanent user
  - one subscription_access user
  - one owned_and_subscription_access user
  - one blocked_by_region user
  - one review_admin
  - one policy_admin
  - one support_readonly

seed_requirements:
  - at least one asset with exhibition_allowed=true
  - at least one asset with rights-change block scenario
  - at least one asset with reader progress
  - at least one asset with viewer progress
  - at least one asset with favorite without ownership
