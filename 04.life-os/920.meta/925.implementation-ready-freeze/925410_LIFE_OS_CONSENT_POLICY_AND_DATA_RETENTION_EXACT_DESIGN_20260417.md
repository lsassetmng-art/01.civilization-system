# ============================================================
# LIFE OS CONSENT / POLICY / DATA RETENTION EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925410
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix exact consent, policy, retention, deletion, and data minimization rules for LifeOS.
- Make retention and consent enforceable across canonical records, projections, reminders, import/export, and audit.
- Preserve the boundary that mutable persona truth belongs only to PersonaOS.

principles:
- consent scope must be explicit
- retention must be class-based
- deletion must be policy-governed and auditable
- exportability does not imply indefinite retention
- projection retention follows canonical retention, never exceeds policy without explicit basis
- signed snapshot refs are references, not mutable persona truth

# ============================================================
# 1. CONSENT MODEL
# ============================================================

consent_boundary:
  consent_subject:
    - user-owned LifeOS records
    - import connectors
    - reminder delivery channels
    - export / portability generation
    - persona-linked display binding
  consent_not_equal_to:
    - operator override
    - technical feasibility
    - cached historical availability

consent_record_required_fields:
  - consent_record_id
  - user_id
  - consent_domain_code
  - consent_scope_code
  - consent_action_code
  - granted_at
  - granted_by
  - effective_from
  - effective_until
  - revoked_at
  - policy_basis_code
  - evidence_ref
  - trace_id

consent_domain_codes:
  - life.import
  - life.export
  - life.reminder
  - life.alert
  - life.review
  - life.persona.display
  - life.persona.request
  - life.operator.override

consent_scope_examples:
  life.import:
    - mobile_health_bridge
    - calendar_bridge
    - manual_csv_import
  life.export:
    - full_portability_package
    - csv_metrics_export
    - review_bundle_export
  life.reminder:
    - push_delivery
    - email_delivery
    - sms_delivery
  life.persona.display:
    - signed_snapshot_display
    - contextual_display_persona
  life.persona.request:
    - lifestyle_context_request
    - display_refresh_request

consent_rules:
  - revocation must be append-first and auditable
  - scope must be narrower than or equal to domain
  - no reminder channel may send without active channel consent or equivalent policy basis
  - persona-linked display must use signed snapshot based consent scope only
  - persona-linked request from LifeOS must reference consent or policy basis when required

# ============================================================
# 2. POLICY BASIS MODEL
# ============================================================

policy_basis:
  exact_meaning:
    stable normalized basis code explaining why a sensitive or high-impact action is allowed.
  examples:
    - user_explicit_consent
    - required_for_requested_export
    - operator_incident_review
    - scheduled_reminder_under_active_consent
    - signed_snapshot_display_allowed
    - restore_through_import_requested_by_user

policy_basis_required_when:
  - generating export packages
  - operator override is used
  - reminder escalation occurs
  - persona display snapshot is rebound by operator flow
  - high-risk import replay is approved
  - deletion exception is applied

# ============================================================
# 3. RETENTION CLASSES
# ============================================================

retention_classes:
  short:
    intended_for:
      - volatile transport logs
      - temporary generation artifacts
  medium:
    intended_for:
      - delivery attempts
      - sync status history
      - normal operational audit summaries
  long:
    intended_for:
      - canonical life records
      - correction logs
      - operator actions
      - export manifests
      - persona request/result refs
  legal_hold:
    intended_for:
      - explicitly frozen records pending policy or incident handling

retention_assignment:
  habit_log:
    retention_class: long
  health_metric_log:
    retention_class: long
  goal_event:
    retention_class: long
  life_record_revision_log:
    retention_class: long
  reminder_job:
    retention_class: medium
  delivery_attempt:
    retention_class: medium
  export_manifest:
    retention_class: long
  import_normalized_registry:
    retention_class: medium
  operator_audit:
    retention_class: long
  signed_snapshot_ref_binding:
    retention_class: long
  projection_cache:
    retention_class: short_or_medium
    rule:
      must not outlive supporting canonical retention without policy basis

# ============================================================
# 4. DELETION / SUPPRESSION / REDACTION
# ============================================================

deletion_terms:
  hard_delete:
    exact_meaning:
      physical removal allowed only when retention and policy permit.
  soft_suppression:
    exact_meaning:
      record remains in canonical history but normal reads exclude it.
  redaction:
    exact_meaning:
      selective removal/masking of sensitive fields while preserving structural auditability.
  retention_expiry:
    exact_meaning:
      scheduled lifecycle transition after which delete/suppress/redact path becomes eligible.

deletion_rules:
  - canonical append history must not be silently overwritten
  - deletion request must create audit event
  - suppression state must be explicit and queryable
  - redaction must preserve traceability of what changed and why
  - export package generation must respect current suppression/redaction state

allowed_paths:
  normal_user_request:
    - create deletion/suppression request
    - validate policy basis and retention eligibility
    - execute approved action
    - append audit event
  operator_policy_path:
    - explicit policy basis required
    - operator action auditable
  retention_expiry_path:
    - scheduled job evaluates eligibility
    - scheduled job appends audit result

# ============================================================
# 5. PERSONA BOUNDARY RETENTION RULE
# ============================================================

persona_boundary_retention_rule:
  lifeos_may_retain:
    - persona_id
    - snapshot_id
    - applied_snapshot_id
    - signed_snapshot_ref
    - request_event_id
    - result_event_id
    - display_contract_code
  lifeos_must_not_retain_as_canonical:
    - mutable persona truth
    - canonical memory truth
    - canonical emotion truth
    - canonical trust truth
    - canonical growth truth
  signed_snapshot_retention:
    - governed as external display reference
    - retention does not imply local ownership of mutable persona truth

# ============================================================
# 6. POLICY ENFORCEMENT POINTS
# ============================================================

enforcement_points:
  api_layer:
    - validate consent scope
    - validate policy basis
    - reject export or reminder actions when inactive
  event_layer:
    - append consent/policy refs into request/result/audit events where required
  projection_layer:
    - exclude suppressed data from user-facing projections
  export_layer:
    - generate package only from eligible records
  operator_console:
    - require policy_basis_code for override paths

# ============================================================
# 7. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - revoked reminder consent blocks outbound reminder delivery
    - suppressed record disappears from dashboard and export outputs
    - redacted record remains auditable without exposing removed sensitive fields
    - persona signed snapshot ref can be retained without copying mutable persona truth
    - operator override without policy basis is blocked
  release_blockers:
    - consentless high-impact action path
    - retention class missing for canonical record family
    - suppression state not respected by export
    - LifeOS local storage of mutable persona truth
