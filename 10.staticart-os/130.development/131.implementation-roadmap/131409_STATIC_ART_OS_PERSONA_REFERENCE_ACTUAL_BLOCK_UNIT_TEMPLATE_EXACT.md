# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK UNIT TEMPLATE EXACT
# ============================================================

status: active-exact-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the exact template structure for one actual execution block.

actual_block_template:
  block_header:
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
      - mixed_but_bounded

  purpose:
  in_scope:
    - TBD
  out_of_scope:
    - TBD

  preconditions:
    - frozen baseline valid
    - selected package approved
    - required prior block closed
    - evidence path ready

  touched_scope:
    files_or_areas:
      - TBD

  no_touch_scope:
    files_or_areas:
      - Persona ownership baseline
      - frozen semantic baseline
      - unrelated business semantics

  execution_steps:
    - step_1
    - step_2
    - step_3

  expected_outputs:
    - changed file(s)
    - new evidence file(s)
    - updated register(s) if needed

  evidence_outputs:
    - execution session log
    - post-run summary
    - blocker/risk update if needed
    - boundary confirmation note if Persona scope touched

  close_gate:
    - exact condition proving block can be considered closed

  failure_handling:
    - stop condition
    - safe fallback condition
    - evidence capture on failure

  rollback_or_safe_stop:
    - disable affected surface if runtime-facing
    - revert to unavailable/stale/restricted-safe behavior
    - do not fabricate local Persona truth

template_rule:
- every actual block should be instantiable from this template
- every instantiated block must preserve signed snapshot boundary
