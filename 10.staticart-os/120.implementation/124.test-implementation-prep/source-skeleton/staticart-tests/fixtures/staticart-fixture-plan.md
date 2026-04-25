# ============================================================
# STATIC ART OS FIXTURE PLAN
# ============================================================

required_assets:
  - one publishing draft
  - one visual draft
  - one published marketplace asset
  - one library-only asset
  - one restricted asset
  - one delisted asset

required_users:
  - one owned_permanent user
  - one subscription_access user
  - one owned_and_subscription_access user
  - one blocked_by_region user
  - one review_admin
  - one policy_admin
  - one support_readonly

required_special_cases:
  - one asset with exhibition_allowed=true
  - one asset with rights-change block scenario
  - one asset with reader progress
  - one asset with viewer progress
  - one asset favorited without permanent ownership

fixture_rules:
  - fixture ids must be deterministic in local test runs
  - publishing and visual assets must both be covered
  - restricted and delisted must be separate assets
  - favorites must survive entitlement-loss scenario validation
