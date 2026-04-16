# ============================================================
# STATIC ART OS PERMISSION POLICY EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

actors:
  - guest
  - signed_in_user
  - library_user
  - creator_owner
  - publisher_operator
  - review_admin
  - policy_admin
  - support_readonly
  - internal_integration
  - exhibition_builder_reader

ownership_boundary:
  permission_evaluation_axes:
    - actor role
    - asset ownership
    - publisher ownership
    - lifecycle_state
    - review_status
    - entitlement_state
    - restriction state

permission_summary:
  guest:
    allow:
      - marketplace list read
      - product detail read
      - sample availability read
    deny:
      - favorite
      - full open
      - library
      - annotation
      - progress save

  signed_in_user:
    allow:
      - marketplace read
      - favorite add/remove
      - sample open
      - purchase start
      - entitlement read
    conditional:
      - full open only when entitlement allows
      - library only when projection allows visibility
    deny:
      - creator workspace
      - review surface
      - policy surface
      - canonical write

  library_user:
    allow:
      - my library
      - continue reading/viewing
      - full open
      - progress save
      - annotations
      - favorite

  creator_owner:
    allow:
      - own asset draft create
      - own asset files update
      - own asset metadata update
      - own asset rights update
      - own asset sales update
      - own asset subscription update
      - self check
      - review request create
      - publish marketplace
      - publish library only
      - delist
      - archive
      - audit summary read
    deny:
      - self approval
      - review decision
      - policy override

  publisher_operator:
    allow:
      - publisher governed asset operational updates
      - sales/subscription/publish operation
      - delist
      - audit summary read
    deny:
      - review decision
      - legal override

  review_admin:
    allow:
      - review queue read
      - review detail read
      - approve
      - reject
      - rework_required
      - restrict
      - audit read
      - projection refresh request
    deny:
      - direct creator metadata edits
      - purchase reflection
      - arbitrary rights rewrite

  policy_admin:
    allow:
      - region override
      - age override
      - legal block
      - restriction issue
      - restriction release flow start
      - projection revoke
      - audit read
      - emergency delist
    deny:
      - fake purchase grants

  support_readonly:
    allow:
      - asset read
      - review history read
      - audit read
      - entitlement snapshot read
      - projection snapshot read
    deny:
      - all writes

  internal_integration:
    allow:
      - purchase reflect
      - subscription reflect
      - refresh projections
      - entitlement recompute
      - internal audit write
    deny:
      - creator metadata update
      - review decision
      - arbitrary rights change

  exhibition_builder_reader:
    allow:
      - exhibition projection read
      - eligibility reason read
    deny:
      - projection write
      - canonical write
      - entitlement write

endpoint_classes:
  creator_workspace:
    actors:
      - creator_owner
      - publisher_operator
    conditions:
      - asset or publisher ownership must match
      - review_pending blocks creator-side edits
      - archived blocks publish resurrection
      - restricted blocks publish
  review_surface:
    actors:
      - review_admin
      - policy_admin partial
  marketplace_detail_entitlement:
    actors:
      - guest
      - signed_in_user
      - library_user
  library_progress_annotations:
    actors:
      - signed_in_user
      - library_user
    conditions:
      - visibility and entitlement checks must pass for open/progress
      - favorite allowed even with sample_only
  internal_reflection:
    actors:
      - internal_integration
      - review_admin partial
      - policy_admin partial

hard_denies:
  - archived asset publish
  - creator edit during review_pending
  - full open without entitlement
  - exhibition_builder_reader projection write
  - support_readonly write
  - creator self-approval
  - internal_integration rights policy update
  - restricted asset full access session issue

audit_required_operations:
  - review decide
  - publish marketplace
  - publish library only
  - delist
  - restrict
  - archive
  - rights policy change
  - purchase reflect
  - subscription reflect
  - projection revoke
  - emergency override

policy_priority:
  - legal_or_emergency_override
  - restriction_state
  - rights_policy
  - region_policy
  - age_policy
  - entitlement_resolution
  - ui_preference_visibility_tuning

age_rating_enum:
  - all_ages
  - age_12_plus
  - age_15_plus
  - age_18_plus
  - adults_only

age_policy_rules:
  - rating unset blocks publish
  - sample passes same age gate as full access
  - adults_only default exposure is highly restricted

region_policy:
  region_mode_enum:
    - global
    - allow_list
    - deny_list
  rules:
    - global allows all regions
    - allow_list allows only listed regions
    - deny_list blocks only listed regions
    - unknown region default behavior is detail/sample-visible but full-block unless stricter override is set

sample_policy:
  allowed_if:
    - sample source exists
    - detail exposure allowed
    - no age/region block
    - rights allow sample
    - not restricted
  prohibited:
    - full-resolution ownership-equivalent export
    - permanent offline
    - premium full-bundle behavior

restriction_policy:
  effects:
    - marketplace exposure stop or block
    - full access session stop
    - sample stop
    - exhibition projection revoke
    - new purchase stop
    - library shelf may remain while open is blocked
  preserved:
    - audit
    - favorite
    - progress
    - annotations
    - purchase history
    - entitlement history

delist_policy:
  effects:
    - marketplace new exposure stop
    - existing owner full open generally preserved
    - subscription access follows current rights and entitlement rules

rights_change_policy:
  - keep purchase history
  - apply blocked_by_rights_change as effective block when needed
  - allow restoration if later unblocked
  - do not delete favorites, progress, annotations

coexistence_policy:
  - permanent ownership plus subscription -> owned_and_subscription_access
  - subscription end with permanent ownership -> owned_permanent
  - subscription end without ownership -> none or blocked state
  - subscription never upgrades to permanent ownership

exhibition_policy:
  eligible_only_if:
    - published lifecycle
    - not restricted
    - exhibition_allowed=true
    - no region/age/rights conflict
    - projection refreshed
    - builder read conditions satisfied
  projection_states:
    - eligible
    - ineligible
    - revoked

reason_codes:
  restriction_block_examples:
    - policy_violation_under_review
    - legal_hold
    - region_block_applied
    - age_policy_block_applied
    - rights_changed_block
    - creator_requested_delist
    - publisher_requested_delist
    - unsafe_metadata_under_review
    - asset_integrity_check_failed
  publish_blocker_examples:
    - missing_required_file_role
    - missing_localization
    - rights_policy_incomplete
    - sales_offer_invalid
    - subscription_rule_invalid
    - review_not_approved
    - sample_policy_not_satisfied
