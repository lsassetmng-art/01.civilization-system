# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL WORK PACKAGE CATALOG
# ============================================================

status: active-exact-catalog
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Catalog the actual implementation work packages for Persona reference
scope in the recommended execution order.

work_packages:
  PR-A01:
    title:
      - boundary and scope confirmation
    goal:
      - confirm whether Persona-linked display/reference is actually in scope
    in_scope:
      - chosen surface list
      - implementation subset decision
      - no-touch confirmation
    out_of_scope:
      - code changes
    prerequisite_packages:
      - none

  PR-A02:
    title:
      - DB reference layer enablement
    goal:
      - introduce approved local reference/history/projection/view-config schema if needed
    in_scope:
      - approved SQL/migration package
      - duplicate-table prevention proof
    out_of_scope:
      - upstream Persona truth
      - UI behavior
    prerequisite_packages:
      - PR-A01

  PR-A03:
    title:
      - reflection and replay-safe internal behavior
    goal:
      - implement authoritative result reflection, idempotency, stale handling
    in_scope:
      - result reflection path only
      - replay/idempotent logic
    out_of_scope:
      - direct Persona mutation
    prerequisite_packages:
      - PR-A01
      - PR-A02 if DB tables are required

  PR-A04:
    title:
      - API read-side and local view config path
    goal:
      - expose safe read-side fields and local_view_config patch
    in_scope:
      - asset detail extension
      - local_view_config patch
      - internal reflection endpoint contract binding
    out_of_scope:
      - Persona truth write APIs
    prerequisite_packages:
      - PR-A03

  PR-A05:
    title:
      - UI surface enablement
    goal:
      - enable creator/public/exhibition safe surfaces
    in_scope:
      - creator summary
      - projection-safe rendering
      - stale/expired/restricted-safe states
    out_of_scope:
      - Persona canonical editor
    prerequisite_packages:
      - PR-A04

  PR-A06:
    title:
      - verification and evidence pack
    goal:
      - prove DB/API/UI/policy/regression acceptance for implemented scope
    in_scope:
      - tests
      - logs
      - post-run summary
      - acceptance evidence
    out_of_scope:
      - unrelated product features
    prerequisite_packages:
      - PR-A02
      - PR-A03
      - PR-A04
      - PR-A05 as applicable

  PR-A07:
    title:
      - runtime guard and rollout readiness
    goal:
      - prepare monitoring, reconciliation, rollback, release judgement for enabled scope
    in_scope:
      - drift/incident/release/rollback preparation
    out_of_scope:
      - ownership redesign
    prerequisite_packages:
      - PR-A06

catalog_rule:
- if Persona-linked display is not needed, PR-A02 through PR-A07 may remain unapplied
- if only partial surfaces are needed, packages may be subsetted but must keep order discipline
