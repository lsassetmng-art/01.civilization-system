# ============================================================
# STATIC ART OS ACCEPTANCE AND TEST EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: development
owner: Boss
prepared_by: Zero

acceptance_principle:
  StaticArtOS is accepted only when database, API, UI, policy,
  projection, and continuity are connected end-to-end.

acceptance_groups:
  - lifecycle_and_publish
  - review_and_governance
  - entitlement_and_access
  - library_and_continuity
  - policy_and_blocking
  - cx22073jw_and_projection
  - audit_and_permission

required_cases:
  lifecycle_and_publish:
    - AC-LC-001 draft can progress through files/metadata/rights/sales/subscription and pass self check
    - AC-LC-002 approved asset can publish to marketplace
    - AC-LC-003 unapproved asset cannot publish
    - AC-LC-004 archived asset cannot be republished

  review_and_governance:
    - AC-RV-001 self_check_passed asset can create review request
    - AC-RV-002 creator cannot edit metadata during review_pending
    - AC-RV-003 review_admin can approve/reject/rework/restrict
    - AC-RV-004 creator cannot self-approve

  entitlement_and_access:
    - AC-EN-001 purchase reflection yields owned_permanent
    - AC-EN-002 subscription only yields subscription_access
    - AC-EN-003 purchase plus subscription yields owned_and_subscription_access
    - AC-EN-004 subscription end without ownership blocks full open
    - AC-EN-005 rights-change block preserves purchase history and user artifacts

  library_and_continuity:
    - AC-LB-001 reader progress appears in Continue Reading
    - AC-LB-002 viewer progress appears in Continue Viewing
    - AC-LB-003 sample_only asset can still be favorited
    - AC-LB-004 entitlement loss does not remove favorite

  policy_and_blocking:
    - AC-PL-001 region deny blocks full open
    - AC-PL-002 age policy can block sample as well
    - AC-PL-003 restricted asset blocks new purchase/sample/full open
    - AC-PL-004 delisted asset preserves existing owner access

  cx22073jw_and_projection:
    - AC-CX-001 publish updates search and exhibition reference areas
    - AC-CX-002 rights change updates exhibition eligibility
    - AC-CX-003 CX-side helper signals do not overwrite canonical automatically

  audit_and_permission:
    - AC-AU-001 review/publish/restrict/delist/archive all create audit events
    - AC-AU-002 support_readonly can read but cannot write
    - AC-AU-003 exhibition_builder_reader reads projection only
    - AC-AU-004 same Idempotency-Key same body does not double-apply

non_functional:
  - NF-001 stable response behavior for library list, detail, entitlement, access-session
  - NF-002 retry safety for publish/review/purchase reflect/progress save
  - NF-003 audit traceability with request_id and actor
  - NF-004 derived projection regenerability

minimum_fixture_set:
  assets:
    - one publishing asset
    - one visual asset
    - one published marketplace asset
    - one library-only asset
    - one restricted asset
    - one delisted asset
  users:
    - one owned_permanent user
    - one subscription_access user
    - one owned_and_subscription_access user
    - one blocked_by_region user
    - one review_admin
    - one policy_admin
    - one support_readonly

implementation_ready_exit_criteria:
  - DB schema fixed
  - API contract fixed
  - screen/stateflow fixed
  - permission/policy fixed
  - CX22073JW boundary fixed
  - acceptance cases fixed
