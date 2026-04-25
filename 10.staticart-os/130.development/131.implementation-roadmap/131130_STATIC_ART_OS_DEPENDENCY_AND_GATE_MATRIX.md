# ============================================================
# STATIC ART OS DEPENDENCY AND GATE MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

dependencies:
  phase_1_before_phase_2:
    - schema and tables must exist
    - apply runner must pass
  phase_2_before_phase_3:
    - creator writes must persist correctly
    - version_token path must exist
  phase_3_before_phase_4:
    - publishable lifecycle states must exist
    - audit event wiring must exist
  phase_4_before_phase_5:
    - entitlement resolution must exist
    - access session policy must exist
  phase_5_before_phase_6:
    - continuity data must exist
    - library projections must refresh
  phase_6_before_phase_7:
    - governance states and projection refresh must exist
  phase_7_before_phase_8:
    - cx reference publish must exist
    - projection results must be queryable

review_gates:
  sql_gate:
    - reviewer: Sato
    - required_for: schema/table/index/constraint changes
  service_gate:
    - required_for: lifecycle/governance/entitlement logic
  ui_gate:
    - required_for: screen-stateflow consistency
  acceptance_gate:
    - required_for: phase completion signoff

hard_stops:
  - do not move to Phase 2 if Phase 1 runner fails
  - do not move to publish flow if review flow is incomplete
  - do not move to library continuity if entitlement is unstable
  - do not publish CX references before projection semantics are stable
