# ============================================================
# STATIC ART OS PERSONA REFERENCE IMPLEMENTATION WORKSTREAM DECOMPOSITION EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Decompose Persona reference implementation into exact workstreams so
actual implementation can proceed in bounded, reviewable units.

core_rule:
- Persona reference implementation is optional.
- Enable it only if Persona-linked display/reference is actually needed.
- Each workstream must preserve the signed snapshot boundary.

workstreams:
  WS01_boundary_and_enablement:
    goal:
      - reconfirm boundary before code touch
    outputs:
      - implementation scope decision
      - chosen surfaces list
      - touch/no-touch decision
    must_not_do:
      - change Persona ownership rule
      - change frozen baseline casually

  WS02_db_reference_layer:
    goal:
      - add reference/history/local-view/projection tables if required
    scope:
      - 121270 DB exact schema
      - 121280 DB insertion plan
      - 121290 SQL exact DDL
    deliverable:
      - migration-ready SQL only for approved scope
    must_not_do:
      - create Persona core duplicate tables

  WS03_event_and_reflection_layer:
    goal:
      - wire authoritative result reflection path
    scope:
      - event exact
      - replay/idempotency/stale handling
      - reflection-safe update behavior
    deliverable:
      - internal reflection behavior for official result events only
    must_not_do:
      - add direct Persona mutation path

  WS04_api_read_side:
    goal:
      - expose reference-safe and projection-safe read models
    scope:
      - asset detail response extension
      - local_view_config patch
      - internal reflection endpoints
    deliverable:
      - read/reflection-only API behavior
    must_not_do:
      - expose Persona mutable truth
      - add forbidden write endpoints

  WS05_ui_surface_enablement:
    goal:
      - enable creator/public/exhibition Persona-linked display safely
    scope:
      - creator workspace summary
      - public display-safe projection
      - exhibition display-safe projection
      - local_view_config editing
    deliverable:
      - signed-snapshot-based display only
    must_not_do:
      - add Persona canonical editor

  WS06_test_and_verification:
    goal:
      - prove boundary safety and feature correctness
    scope:
      - DB/API/UI/policy/regression tests
      - verify-only and recheck flows
    deliverable:
      - evidence-backed acceptance
    must_not_do:
      - rely on assumption without logs/evidence

  WS07_runtime_guard_and_rollout:
    goal:
      - prepare observability, reconciliation, rollback, rollout
    scope:
      - monitoring/alerting
      - incident/rollback/recovery
      - cutover/backfill
      - SLO/KPI
    deliverable:
      - release-review-ready runtime guard layer
    must_not_do:
      - skip safe unavailable/stale/restricted fallback

workstream_order:
- WS01 first
- WS02 before WS03/WS04 if DB layer is required
- WS03 before WS05 for any surface that depends on reflection
- WS06 must prove implemented scope
- WS07 before rollout

final_workstream_judgement:
- workstreams exist to reduce implementation risk and preserve boundary clarity
