# ============================================================
# SPEED EXPERIENCE VALIDATION MATRIX
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines validation checkpoints for speed-experience features.

validation_rows:

- validation_id: SEV-001
  feature: quick_start_generate
  check:
    - request_text is present
    - target_type is valid
    - output_scope is valid
  failure_result:
    - quick_start_rejected
    - validation_error_visible

- validation_id: SEV-002
  feature: live_preview_resolve
  check:
    - preview_scope is supported
    - source_context is resolvable
  failure_result:
    - preview_partial_or_failed
    - preview_error_visible

- validation_id: SEV-003
  feature: starter_pack_generate
  check:
    - starter_pack_type is valid
    - included_artifacts are supported
  failure_result:
    - starter_pack_generation_rejected
    - validation_error_visible

- validation_id: SEV-004
  feature: diff_review_resolve
  check:
    - before_snapshot_id exists
    - after_snapshot_id exists
    - comparison pair is valid
  failure_result:
    - diff_unavailable
    - reason_visible

- validation_id: SEV-005
  feature: diff_revert_execute
  check:
    - target_snapshot_id exists
    - revert is authorized
    - revert target is revertable
  failure_result:
    - revert_rejected
    - reason_visible

- validation_id: SEV-006
  feature: promote_to_governed
  check:
    - fast_run_id exists
    - promote is authorized
    - governed transition is allowed
  failure_result:
    - promotion_rejected
    - reason_visible

validation_principle:
Validation failure must be explicit and reviewable.
