# ============================================================
# STATIC ART OS IMPLEMENTATION READY FINAL CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

final_check_groups:
  db_foundation:
    - schema exists
    - required enums exist
    - required tables exist
    - required indexes exist

  creator_write:
    - asset create works
    - localization write works
    - rights write works
    - sales write works
    - subscription write works

  governance_publish:
    - self check works
    - review request works
    - review decision works
    - publish marketplace works
    - publish library only works
    - delist/restrict/archive work
    - audit write works

  entitlement_access:
    - entitlement resolution works
    - full/sample access rules work
    - purchase reflection works
    - subscription reflection works

  library_continuity:
    - library list works
    - continue reading works
    - continue viewing works
    - reader progress works
    - viewer progress works
    - favorite works
    - annotation works

  admin_ui:
    - review queue works
    - review detail works
    - audit detail works
    - support_readonly is read-only

  acceptance_regression:
    - lifecycle_and_publish acceptance passes
    - review_and_governance acceptance passes
    - entitlement_and_access acceptance passes
    - library_and_continuity acceptance passes
    - policy_and_blocking acceptance passes
    - audit_and_permission acceptance passes

implementation_ready_judgement:
  - all required groups pass, or blockers are explicitly recorded and accepted
<!-- PERSONA_REFERENCE_RULE_CHECKS_START -->

persona_reference_rule_checks:
  - no persona core duplicate tables exist in StaticArtOS
  - no direct mutation path to Persona canonical state exists
  - signed snapshot reference is used for public display
  - signed snapshot reference is used for exhibition display
  - local_view_config remains presentation-only
  - local cache/projection remains rebuildable only
  - Persona canonical ownership remains outside StaticArtOS

<!-- PERSONA_REFERENCE_RULE_CHECKS_END -->
