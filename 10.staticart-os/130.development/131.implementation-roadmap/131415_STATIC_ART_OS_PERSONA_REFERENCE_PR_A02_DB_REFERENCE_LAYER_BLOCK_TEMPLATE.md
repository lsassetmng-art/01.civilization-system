# ============================================================
# STATIC ART OS PERSONA REFERENCE PR-A02 DB REFERENCE LAYER BLOCK TEMPLATE
# ============================================================

status: active-block-template
system: StaticArtOS
package_id: PR-A02
owner: Boss
prepared_by: Zero

purpose:
Template for actual DB-layer work that introduces approved local
Persona reference tables only if needed.

block_template:
  block_id:
    - PR-A02-B01 or later
  block_title:
    - DB reference layer enablement
  scope_type:
    - db

  in_scope:
    - approved reference/history/local_view/projection schema work
    - migration-ready DDL wrapper if approved
    - duplicate-table prevention proof

  out_of_scope:
    - Persona core tables
    - upstream Persona truth
    - API/UI behavior
    - runtime rollout

  preconditions:
    - PR-A01 closed
    - SQL exact DDL baseline accepted
    - DB scope approved for actual implementation

  touched_scope:
    - migration/DDL area only
    - DB evidence files
    - blocker/risk notes if needed

  no_touch_scope:
    - Persona ownership semantics
    - unrelated StaticArt business schema
    - forbidden Persona duplicate table names

  execution_steps:
    - select exact approved subset of tables
    - prepare bounded migration/DDL unit
    - review idempotency/safety of migration
    - record duplicate-table prevention proof

  expected_outputs:
    - bounded migration/DDL artifact
    - DB evidence note
    - no-duplicate proof

  evidence_outputs:
    - SQL/migration artifact path
    - execution session log if executed
    - post-run summary
    - blocker/risk update if needed

  close_gate:
    - approved schema subset exists and boundary-safe DB proof exists

  failure_handling:
    - stop if any table implies Persona core duplication
    - stop if external asset ownership assumptions become ambiguous

  rollback_or_safe_stop:
    - do not apply unapproved schema
    - if partially executed later, use documented DB rollback/safe stop only
