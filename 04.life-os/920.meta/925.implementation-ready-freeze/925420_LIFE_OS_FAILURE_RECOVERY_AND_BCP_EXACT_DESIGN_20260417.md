# ============================================================
# LIFE OS FAILURE RECOVERY AND BCP EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925420
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix exact failure recovery, incident handling, backfill, reconciliation, and business continuity rules for LifeOS.
- Make recovery paths consistent with append-first canonical data and rebuildable projections.
- Prevent recovery flows from becoming hidden mutation paths.

principles:
- canonical append history is the recovery anchor
- projection and cache are disposable
- recovery actions are explicit and auditable
- incident mitigation must not bypass persona boundary rules
- replay and backfill must be deterministic

# ============================================================
# 1. FAILURE CLASSIFICATION
# ============================================================

failure_classes:
  write_path_failure:
    examples:
      - canonical write rejected
      - partial import write
      - reminder schedule not persisted
  projection_failure:
    examples:
      - dashboard rebuild failed
      - stale timeline checkpoint
      - review summary generation failed
  delivery_failure:
    examples:
      - push provider rejected
      - email send timeout
      - retry exhaustion
  integration_failure:
    examples:
      - import schema mismatch
      - connector auth invalid
      - checkpoint drift
  export_failure:
    examples:
      - package build failed
      - manifest mismatch
      - restore validation failed
  persona_boundary_failure:
    examples:
      - persona result missing
      - invalid snapshot ref
      - request/result pair mismatch

failure_severity:
  - low
  - medium
  - high
  - critical

severity_rules:
  low:
    typical_effect:
      localized retry or delayed projection
  medium:
    typical_effect:
      user-visible degradation without canonical loss
  high:
    typical_effect:
      blocked core function or prolonged inconsistency
  critical:
    typical_effect:
      broad inability to trust outputs or unsafe delivery path

# ============================================================
# 2. RECOVERY TOOLS
# ============================================================

recovery_tools:
  retry:
    exact_meaning:
      bounded re-attempt of same action with same semantic identity.
  replay:
    exact_meaning:
      deterministic re-consumption of canonical append sources.
  rebuild:
    exact_meaning:
      regenerate projection/read-model from canonical records.
  backfill:
    exact_meaning:
      derive missing downstream state from historical canonical sources.
  reconciliation:
    exact_meaning:
      compare downstream state against expected state from canonical sources.
  quarantine:
    exact_meaning:
      isolate suspect batch or output pending review.
  fail_closed:
    exact_meaning:
      refuse output when correctness requirements are not met.

tool_rules:
  - retry does not create duplicate semantic write
  - replay does not originate from projection tables
  - backfill requires audit event and scope definition
  - reconciliation outputs passed/warning/failed/blocked_for_review
  - critical persona boundary failures default to fail_closed for display-sensitive paths

# ============================================================
# 3. RECOVERY MATRICES
# ============================================================

recovery_matrix:
  canonical_write_failure:
    primary_action:
      - retry if idempotent and safe
    fallback_action:
      - fail request with traceable error
      - no projection update
  dashboard_projection_failure:
    primary_action:
      - mark stale
      - schedule rebuild
    fallback_action:
      - serve stale with badge only if policy allows
  review_projection_failure:
    primary_action:
      - fail_closed for recommendation panel
      - allow limited raw source display if designed
  reminder_delivery_failure:
    primary_action:
      - append failed delivery attempt
      - evaluate retry policy
    fallback_action:
      - operator queue if escalation policy allows
  import_normalization_failure:
    primary_action:
      - reject offending record or batch
      - append rejection audit
  export_generation_failure:
    primary_action:
      - fail export job
      - preserve manifest attempt trace
  persona_result_missing:
    primary_action:
      - keep request pending
      - do not fabricate local result
    fallback_action:
      - operator visibility only
  invalid_snapshot_ref:
    primary_action:
      - fail display binding
      - do not render unsafe persona-linked display

# ============================================================
# 4. CHECKPOINT / RPO / RTO
# ============================================================

checkpoint_model:
  required_checkpoint_families:
    - projection_checkpoint
    - import_checkpoint
    - sync_checkpoint
    - export_generation_checkpoint
    - persona_request_result_pair_checkpoint

continuity_targets:
  canonical_data_rpo:
    target:
      near-zero for accepted canonical writes
  projection_rto:
    target:
      short rebuild time acceptable because projection is disposable
  export_rto:
    target:
      moderate; regeneration is acceptable
  persona_display_rto:
    target:
      fail_closed preferred over unsafe degraded display

continuity_rules:
  - accepted canonical writes must remain reconstructible
  - projection loss is recoverable via rebuild
  - persona-linked display may be withheld rather than guessed

# ============================================================
# 5. INCIDENT OPERATIONS
# ============================================================

incident_operations:
  incident_required_fields:
    - incident_id
    - incident_class
    - severity
    - detected_at
    - detected_by
    - affected_scope
    - mitigation_status
    - trace_id
    - summary_text
  mitigation_actions:
    - rebuild_projection
    - quarantine_import_batch
    - disable_export_type
    - suspend_reminder_channel
    - invalidate_snapshot_binding
    - operator_review_required

operator_rules:
  - operator action must append incident or audit record
  - operator must not silently mutate canonical history
  - all mitigations require policy basis or incident reason code

# ============================================================
# 6. PERSONA BOUNDARY FAILURE RULE
# ============================================================

persona_boundary_failure_rule:
  same_pattern_as_business_to_persona:
    - LifeOS request
    - PersonaOS apply
    - LifeOS result receipt
  prohibited_recovery_shortcuts:
    - local synthetic persona canonical state
    - local trust/growth/memory/emotion backfill
    - unsafe fallback rendering without signed snapshot
  allowed_recovery_paths:
    - request remains pending
    - invalid binding cleared
    - signed snapshot rebind after valid result or operator-approved policy path

# ============================================================
# 7. BCP MODES
# ============================================================

bcp_modes:
  normal:
    - all channels and projections active
  degraded_read_mode:
    - canonical reads and limited stale projections allowed
  projection_rebuild_mode:
    - projections prioritized for rebuild, some screens constrained
  delivery_safe_mode:
    - reminders/alerts restricted to safe channels only
  persona_safe_mode:
    - persona-linked display limited to last valid signed snapshot or hidden
  export_hold_mode:
    - exports suspended pending manifest/integrity recovery

mode_switch_rules:
  - critical integrity issues may force persona_safe_mode or export_hold_mode
  - mode changes must be auditable and operator-visible

# ============================================================
# 8. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - projection rebuild restores dashboard from canonical history
    - critical review projection failure blocks recommendation rendering
    - invalid persona snapshot ref prevents display binding
    - import quarantine blocks downstream canonical contamination
    - reminder delivery retries do not duplicate canonical reminder job
  release_blockers:
    - recovery path that mutates canonical history silently
    - projection recovery that depends on non-canonical source
    - persona recovery path that invents mutable truth locally
