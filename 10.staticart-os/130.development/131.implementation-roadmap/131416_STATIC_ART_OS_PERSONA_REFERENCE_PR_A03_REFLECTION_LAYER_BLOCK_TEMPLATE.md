# ============================================================
# STATIC ART OS PERSONA REFERENCE PR-A03 REFLECTION LAYER BLOCK TEMPLATE
# ============================================================

status: active-block-template
system: StaticArtOS
package_id: PR-A03
owner: Boss
prepared_by: Zero

purpose:
Template for actual reflection-layer work that handles authoritative
result events, idempotency, replay, and stale handling.

block_template:
  block_id:
    - PR-A03-B01 or later
  block_title:
    - reflection and replay-safe behavior
  scope_type:
    - reflection

  in_scope:
    - official result reflection only
    - idempotent duplicate handling
    - stale overwrite prevention
    - replay-safe local update behavior

  out_of_scope:
    - direct Persona mutation
    - upstream authoritative decision logic
    - unrelated runtime features

  preconditions:
    - PR-A01 closed
    - PR-A02 closed if DB layer is required
    - event exact / reflection exact baseline reviewed

  touched_scope:
    - reflection implementation area
    - bounded event handling code
    - evidence/log/review notes

  no_touch_scope:
    - direct write/mutation routes
    - local truth fallback
    - frozen boundary semantics

  execution_steps:
    - bind official result events only
    - implement source_event_id traceability
    - implement idempotent duplicate behavior
    - implement stale-result suppression logic
    - record reflection evidence

  expected_outputs:
    - reflection-safe bounded implementation
    - replay/idempotency proof
    - stale-handling proof

  evidence_outputs:
    - execution session log
    - post-run summary
    - reflection test/proof note
    - blocker/risk update if needed

  close_gate:
    - official result events only
    - duplicate delivery safe
    - stale overwrite prevented

  failure_handling:
    - stop if direct mutation path appears
    - stop if replay handling is not evidence-backed

  rollback_or_safe_stop:
    - disable affected reflection path
    - preserve unavailable/stale-safe behavior
