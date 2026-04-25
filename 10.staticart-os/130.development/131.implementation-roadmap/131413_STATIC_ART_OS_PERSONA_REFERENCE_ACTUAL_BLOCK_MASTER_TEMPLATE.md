# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK MASTER TEMPLATE
# ============================================================

status: active-exact-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the master template used to instantiate one actual execution
block for Persona reference implementation.

actual_block_master_template:
  block_identity:
    block_id:
    package_id:
    block_title:
    scope_type:
      - db
      - reflection
      - api
      - ui
      - test
      - runtime_guard
      - bounded_mixed

  purpose:
  scope_summary:

  in_scope:
    - TBD
  out_of_scope:
    - TBD

  preconditions:
    - frozen baseline verified
    - prerequisite package/blocks closed
    - evidence workspace ready
    - contradiction scan status known

  touched_scope:
    files_or_areas:
      - TBD

  no_touch_scope:
    files_or_areas:
      - Persona ownership baseline
      - direct mutation prohibition baseline
      - unrelated business semantics
      - frozen semantic baseline unless approved through controlled patch path

  execution_steps:
    - step_1
    - step_2
    - step_3

  expected_outputs:
    - implementation output(s)
    - evidence output(s)
    - register update(s) if needed

  evidence_outputs:
    - execution session log
    - post-run summary
    - blocker/risk update if needed
    - boundary confirmation note if Persona scope touched

  close_gate:
    - exact closure condition

  failure_handling:
    - hard stop condition
    - safe stop condition
    - evidence capture on failure

  rollback_or_safe_stop:
    - disable affected scope if runtime-facing
    - revert to unavailable/stale/restricted-safe behavior
    - never invent local Persona truth

master_template_rule:
- every instantiated block must be bounded, evidence-backed, and boundary-safe
