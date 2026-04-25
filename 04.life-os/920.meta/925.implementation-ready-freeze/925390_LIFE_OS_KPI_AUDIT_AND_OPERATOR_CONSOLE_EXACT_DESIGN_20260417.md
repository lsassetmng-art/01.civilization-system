# ============================================================
# LIFE OS KPI / AUDIT / OPERATOR CONSOLE EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925390
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix exact KPI, audit, and operator console rules for LifeOS.
- Make operational visibility, reviewability, and controlled intervention explicit before implementation.
- Keep operator controls compatible with append-first records, rebuildable projections, and PersonaOS boundary rules.

principles:
- KPI is derived, reproducible, and window-bounded
- audit is append-first and trace-linked
- operator action is explicit and policy-governed
- operator console may control process state, not rewrite canonical history invisibly
- persona-linked operator actions use request/result flow, never local canonical mutation

# ============================================================
# 1. KPI FAMILIES
# ============================================================

kpi_families:
  ingestion_kpis:
    - import_accept_rate
    - import_reject_rate
    - import_duplicate_rate
    - import_normalization_latency_p95
  record_kpis:
    - habit_log_daily_active_user_rate
    - health_metric_logging_completeness
    - goal_progress_capture_rate
    - correction_request_rate
  review_kpis:
    - daily_checkin_completion_rate
    - review_generation_success_rate
    - review_stale_projection_block_rate
  reminder_kpis:
    - reminder_delivery_attempt_success_rate
    - reminder_ack_rate
    - quiet_hours_deferral_rate
    - retry_exhaustion_rate
  projection_kpis:
    - dashboard_projection_freshness_rate
    - timeline_projection_rebuild_success_rate
    - review_projection_rebuild_latency_p95
  export_kpis:
    - export_generation_success_rate
    - portability_restore_validation_pass_rate
  operator_kpis:
    - operator_queue_backlog
    - manual_review_turnaround_time
    - override_rate
    - reconciliation_failure_rate
  persona_boundary_kpis:
    - persona_request_success_rate
    - persona_result_latency_p95
    - invalid_snapshot_binding_rate

# ============================================================
# 2. EXACT KPI DEFINITIONS
# ============================================================

exact_kpi_definitions:
  import_accept_rate:
    numerator:
      accepted import jobs in window
    denominator:
      total import jobs completed in window
    window_examples:
      - daily
      - rolling_7d
  import_duplicate_rate:
    numerator:
      deduped duplicate normalized records in window
    denominator:
      total normalized records in window
  health_metric_logging_completeness:
    numerator:
      actual submitted health logs matching required metric plan
    denominator:
      expected metric submissions based on active configuration
  daily_checkin_completion_rate:
    numerator:
      users with submitted daily_checkin on date
    denominator:
      users expected to check in on date
  reminder_ack_rate:
    numerator:
      reminder jobs acknowledged in window
    denominator:
      reminder jobs delivered in window
  dashboard_projection_freshness_rate:
    numerator:
      dashboard projection reads served from non-stale checkpoint
    denominator:
      total dashboard projection reads
  persona_request_success_rate:
    numerator:
      persona requests with accepted or no_effect result
    denominator:
      total persona requests finalized in window
  invalid_snapshot_binding_rate:
    numerator:
      persona display projections invalidated due to bad or outdated snapshot ref
    denominator:
      total persona display projection builds in window

kpi_rules:
  - every KPI must declare numerator and denominator
  - every KPI must declare time window
  - every KPI must be reproducible from canonical records and audit logs
  - no KPI may depend solely on mutable UI cache

# ============================================================
# 3. AUDIT EVENT CLASSES
# ============================================================

audit_event_classes:
  system_audit:
    examples:
      - import accepted
      - import rejected
      - projection rebuild triggered
      - reminder delivery retry exhausted
      - export package generated
  operator_audit:
    examples:
      - correction request reviewed
      - alert dismissed by operator
      - import batch quarantined
      - reminder escalation manually canceled
      - projection rebuild forced
  boundary_audit:
    examples:
      - persona request submitted
      - persona result received
      - signed snapshot binding applied
      - invalid persona snapshot binding rejected
  security_audit:
    examples:
      - access denied
      - sensitive export requested
      - operator override used
      - policy breach blocked

audit_log_required_fields:
  - audit_id
  - audit_class
  - audit_code
  - occurred_at
  - trace_id
  - actor_type
  - actor_id
  - target_type
  - target_id
  - summary_text
  - detail_json
  - policy_basis_code
  - result_status

actor_type_values:
  - system
  - user
  - operator
  - scheduler
  - external_connector

# ============================================================
# 4. OPERATOR CONSOLE SURFACES
# ============================================================

operator_console_surfaces:
  import_console:
    functions:
      - inspect import job
      - inspect rejected normalized records
      - quarantine source batch
      - approve allowed replay
  review_console:
    functions:
      - inspect correction queue
      - inspect alert queue
      - inspect review generation failures
  reminder_console:
    functions:
      - inspect reminder backlog
      - inspect delivery attempts
      - inspect retry exhaustion
      - cancel escalation
  projection_console:
    functions:
      - inspect stale projections
      - trigger rebuild
      - compare checkpoint drift
  export_console:
    functions:
      - inspect export jobs
      - inspect portability restore attempts
  persona_boundary_console:
    functions:
      - inspect persona request/result registry
      - inspect applied snapshot bindings
      - inspect invalid snapshot reference incidents

console_hard_rules:
  - operator console must not silently mutate canonical source records
  - operator console actions must create audit events
  - operator console overrides require policy_basis_code
  - persona console must not expose mutable persona truth owned by PersonaOS

# ============================================================
# 5. OPERATOR ACTION CONTRACTS
# ============================================================

operator_action_contracts:
  force_projection_rebuild:
    required_fields:
      - operator_id
      - projection_code
      - user_scope
      - rebuild_reason_code
      - policy_basis_code
    effect:
      - append operator audit
      - enqueue rebuild request
  quarantine_import_batch:
    required_fields:
      - operator_id
      - ingest_job_id
      - quarantine_reason_code
      - policy_basis_code
    effect:
      - prevent downstream canonical write for affected batch if still pending
      - append operator audit
  dismiss_alert:
    required_fields:
      - operator_id
      - alert_case_id
      - dismiss_reason_code
      - policy_basis_code
    effect:
      - append dismissal event
      - append operator audit
  cancel_reminder_escalation:
    required_fields:
      - operator_id
      - reminder_job_id
      - cancel_reason_code
      - policy_basis_code
    effect:
      - append operator audit
      - mark escalation plan canceled through allowed state transition
  rebind_persona_snapshot_display:
    required_fields:
      - operator_id
      - persona_id
      - snapshot_id
      - applied_snapshot_id
      - signed_snapshot_ref
      - policy_basis_code
    effect:
      - append LifeOS request/result compatible binding update
      - no local canonical mutation of persona truth

# ============================================================
# 6. PERSONA BOUNDARY OPERATIONS
# ============================================================

persona_boundary_operations:
  same_pattern_as_business_to_persona:
    - LifeOS creates request event
    - PersonaOS applies
    - LifeOS receives result event
    - LifeOS binds signed snapshot ref for display if applicable
  operator_console_allowed_persona_fields:
    - persona_id
    - snapshot_id
    - applied_snapshot_id
    - signed_snapshot_ref
    - request_event_id
    - result_event_id
    - display_contract_code
  operator_console_disallowed_persona_fields:
    - mutable persona canonical state
    - canonical memory truth
    - canonical emotion truth
    - canonical growth truth
    - canonical trust truth

# ============================================================
# 7. AUDIT RETENTION / RECONCILIATION
# ============================================================

retention_reconciliation:
  audit_retention_classes:
    system_audit:
      minimum_retention: medium
    operator_audit:
      minimum_retention: long
    boundary_audit:
      minimum_retention: long
    security_audit:
      minimum_retention: long
  reconciliation_jobs:
    - projection_checkpoint_reconciliation
    - import_dedupe_reconciliation
    - reminder_delivery_vs_ack_reconciliation
    - export_manifest_reconciliation
    - persona_request_result_pair_reconciliation
  reconciliation_output:
    - passed
    - warning
    - failed
    - blocked_for_review

# ============================================================
# 8. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - every KPI definition is reproducible from source records
    - every operator action creates audit event
    - every forced rebuild is trace-linked
    - persona boundary console cannot expose mutable persona truth
    - reconciliation detects missing request/result pair
  release_blockers:
    - KPI without exact numerator/denominator definition
    - operator action without policy basis
    - audit event missing actor or target identity
    - console path that can mutate canonical history silently
