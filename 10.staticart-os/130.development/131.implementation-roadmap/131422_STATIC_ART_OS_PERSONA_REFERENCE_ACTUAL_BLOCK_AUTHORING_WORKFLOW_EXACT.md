# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK AUTHORING WORKFLOW EXACT
# ============================================================

status: active-exact-workflow
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the exact workflow to author one actual block.

workflow:
  step_1_pick_package:
    - identify approved package_id
    - confirm dependency gates upstream are closed
    - confirm whether this is B01, B02, or later in sequence

  step_2_lock_scope:
    - state one bounded objective
    - write in_scope and out_of_scope
    - confirm no-touch areas

  step_3_collect_inputs:
    - frozen baseline references
    - exact design references
    - runtime guard / rollback references if needed
    - acceptance / evidence references if needed

  step_4_instantiate_template:
    - fill actual block master template
    - specialize touched scope
    - specialize execution steps
    - specialize expected outputs
    - specialize evidence outputs
    - specialize close gate

  step_5_boundary_review:
    - recheck no duplication
    - recheck no direct mutation
    - recheck signed snapshot basis
    - recheck no fabricated local truth fallback

  step_6_authoring_review:
    - lint for missing sections
    - lint for ambiguous scope
    - lint for absent failure handling
    - lint for absent rollback/safe stop
    - prepare approval packet

  step_7_store_for_execution:
    - save under approved block storage area
    - link to package/review/evidence path
    - do not treat authoring completion as execution completion

workflow_rule:
- authoring is complete only after review readiness, not after first draft text exists
