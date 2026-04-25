# ============================================================
# LIFE OS GLOSSARY AND TERMINOLOGY EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925380
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix exact terminology for LifeOS so DB, API, screen, projection, operator, and audit layers use the same words.
- Prevent naming drift between canonical record, projection, alert, reminder, import/export, and persona-boundary concepts.
- Keep LifeOS terminology consistent with the rule that mutable persona truth belongs only to PersonaOS.

principles:
- one canonical meaning per term
- projection terms must not masquerade as canonical truth
- operator terms must be distinct from user-facing terms
- request/result terminology must remain stable across API, event, and audit layers
- persona-linked display terms must refer to snapshot-based display only

# ============================================================
# 1. CORE DOMAIN TERMS
# ============================================================

core_domain_terms:
  life_record:
    exact_meaning:
      append-first canonical fact recorded by LifeOS.
    includes:
      - habit_log entry
      - health_metric_log entry
      - goal progress append event
      - review submission append event
    excludes:
      - dashboard card
      - summary tile
      - cached metric
  canonical_record:
    exact_meaning:
      source-of-truth record inside LifeOS canonical boundary.
  projection:
    exact_meaning:
      rebuildable derived read-model computed from canonical records and events.
  read_model:
    exact_meaning:
      concrete persisted or in-memory projection optimized for reading.
  append_first:
    exact_meaning:
      write rule where semantic changes are represented by new records/events instead of destructive overwrite.
  correction_request:
    exact_meaning:
      request to amend interpretation or visibility of a canonical record without erasing history.
  revision_log:
    exact_meaning:
      append-only audit trail describing record-level correction or normalization lineage.

# ============================================================
# 2. HABIT / HEALTH / GOAL TERMS
# ============================================================

habit_terms:
  habit_definition:
    exact_meaning:
      stable configured definition of a habit concept, not the act of logging it.
  habit_log:
    exact_meaning:
      append-only record of one logged habit observation or completion.
  habit_streak:
    exact_meaning:
      derived projection summarizing continuous qualifying habit_log presence.
    rule:
      never canonical
  habit_summary:
    exact_meaning:
      dashboard/read-model aggregate of habit logs over a window.

health_terms:
  health_metric_definition:
    exact_meaning:
      configured metric semantics such as weight, sleep_hours, water_intake.
  health_metric_log:
    exact_meaning:
      append-only measured value for a metric at a point in time.
  health_trend:
    exact_meaning:
      derived read-model of metric change over time.
    rule:
      never canonical
  health_risk_flag:
    exact_meaning:
      derived alert or operator-visible concern inferred from logs and rules.

goal_terms:
  goal_definition:
    exact_meaning:
      configured target intention and framing.
  goal_event:
    exact_meaning:
      append-first canonical event stream related to a goal lifecycle.
  goal_progress_event:
    exact_meaning:
      append entry describing measurable or semantic progress.
  goal_status:
    exact_meaning:
      derived current state inferred from goal_event stream.
    rule:
      never direct mutable canonical singleton unless explicitly materialized as derived state.

# ============================================================
# 3. REVIEW / ALERT / REMINDER TERMS
# ============================================================

review_terms:
  daily_checkin:
    exact_meaning:
      user-submitted daily self-report input.
  review_session:
    exact_meaning:
      logical unit representing generated or assembled review material.
  review_summary:
    exact_meaning:
      derived projection summarizing relevant life records for a review window.
  recommendation_bundle:
    exact_meaning:
      derived output set of suggested next actions produced from rules or intelligence layer.

alert_terms:
  alert_case:
    exact_meaning:
      logical issue or concern raised from rules, thresholds, or review analysis.
  alert_severity:
    exact_meaning:
      classification of urgency/impact for an alert.
  alert_status:
    exact_meaning:
      derived or append-tracked lifecycle state of alert handling.
  dismiss_reason_code:
    exact_meaning:
      normalized reason why an alert was dismissed.

reminder_terms:
  reminder_rule:
    exact_meaning:
      configuration rule that can generate due reminder instances.
  reminder_job:
    exact_meaning:
      concrete due reminder instance tied to one user and one due window.
  delivery_attempt:
    exact_meaning:
      append-only provider/channel attempt to deliver a reminder.
  reminder_ack:
    exact_meaning:
      explicit acknowledgment that closes the relevant reminder due instance.
  quiet_hours:
    exact_meaning:
      policy window constraining outbound delivery timing.
  escalation:
    exact_meaning:
      contract-governed change in delivery path/urgency after unmet conditions.

# ============================================================
# 4. IMPORT / EXPORT / PORTABILITY TERMS
# ============================================================

import_export_terms:
  ingest_job:
    exact_meaning:
      one import processing unit received from external source or portability restore.
  normalized_record:
    exact_meaning:
      validated and mapped intermediate representation prepared for canonical write.
  dedupe_key:
    exact_meaning:
      semantic key used to prevent duplicate canonical write from same source fact.
  export_job:
    exact_meaning:
      request and lifecycle entity for one generated export package.
  export_manifest:
    exact_meaning:
      canonical metadata package describing generated export contents and generation context.
  portability_package:
    exact_meaning:
      transportable package containing allowed LifeOS data and manifest for restore-through-import.
  restore_through_import:
    exact_meaning:
      restoration pattern that re-enters via import pipeline rather than privileged direct insert.

# ============================================================
# 5. EVENT / CONTRACT TERMS
# ============================================================

event_contract_terms:
  event_envelope:
    exact_meaning:
      shared structural container for domain events.
  event_type:
    exact_meaning:
      stable exact business code naming what happened.
  event_version:
    exact_meaning:
      contract version number for payload interpretation.
  trace_id:
    exact_meaning:
      end-to-end correlation key across services and logs.
  idempotency_key:
    exact_meaning:
      semantic duplicate-prevention key for same intended action.
  request_event:
    exact_meaning:
      event representing an official ask for external or later apply.
  result_event:
    exact_meaning:
      event representing outcome of prior request or processing contract.
  outbox:
    exact_meaning:
      canonical or delivery-oriented pending publication source, depending on table role.
  inbox:
    exact_meaning:
      consumed event storage or processing intake area, not canonical truth by default.
  replay:
    exact_meaning:
      deterministic re-consumption of canonical append history to rebuild derived state.

# ============================================================
# 6. PROJECTION / UI TERMS
# ============================================================

projection_ui_terms:
  dashboard_card:
    exact_meaning:
      user-visible summary tile built from projection data.
  timeline_item:
    exact_meaning:
      ordered user-visible projection item linked back to source canonical event or record.
  stale_projection:
    exact_meaning:
      projection that no longer reflects latest required canonical checkpoint.
  rebuild_checkpoint:
    exact_meaning:
      persisted marker of latest consumed canonical source for a projection build.
  view_config:
    exact_meaning:
      local UI/display configuration affecting presentation, not canonical meaning.
  local_binding_state:
    exact_meaning:
      app-local state connecting UI/session context to external or projection refs.

# ============================================================
# 7. PERSONA-BOUNDARY TERMS
# ============================================================

persona_boundary_terms:
  persona_id:
    exact_meaning:
      external identity reference for PersonaOS-owned persona.
  snapshot_id:
    exact_meaning:
      external reference to persona snapshot material.
  applied_snapshot_id:
    exact_meaning:
      specific snapshot reference currently applied to LifeOS display binding.
  signed_snapshot_ref:
    exact_meaning:
      trusted display/reference object used for rendering or external presentation.
  persona_request:
    exact_meaning:
      official request from LifeOS for PersonaOS handling.
  persona_result:
    exact_meaning:
      official result returned after PersonaOS handling.
  prohibited_persona_truth_terms_in_lifeos:
    - mutable persona state
    - canonical memory truth
    - canonical emotion truth
    - canonical growth truth
    - canonical trust truth
    - signature authority truth

persona_boundary_rule:
  same_pattern_as_business_to_persona:
    - LifeOS request event
    - PersonaOS apply
    - LifeOS result event
  lifeos_may_store:
    - persona_id
    - snapshot_id
    - applied_snapshot_id
    - signed_snapshot_ref
    - request_event_id
    - result_event_id
    - local_view_config
  lifeos_must_not_store_as_canonical:
    - mutable persona truth

# ============================================================
# 8. OPERATOR / AUDIT TERMS
# ============================================================

operator_audit_terms:
  operator_action:
    exact_meaning:
      explicit controlled action taken through operator console or operational workflow.
  audit_log:
    exact_meaning:
      append-first log describing significant system or operator action with traceability.
  reconciliation_run:
    exact_meaning:
      controlled comparison between projection/output state and canonical sources.
  backfill:
    exact_meaning:
      controlled rebuild or generation of derived state from historical canonical records.
  override:
    exact_meaning:
      explicit exceptional operator action governed by policy and audit.
  quarantine:
    exact_meaning:
      holding state for imported or derived data pending acceptance/rejection.

# ============================================================
# 9. NAMING RULES
# ============================================================

naming_rules:
  canonical_tables:
    preferred_suffixes:
      - _log
      - _event
      - _registry
      - _manifest
    avoid:
      - _summary for canonical tables
      - _current for canonical source-of-truth unless explicitly derived
  projections:
    preferred_suffixes:
      - _projection
      - _read_model
      - _summary
      - _panel
  events:
    pattern:
      namespace.object.verb.result.version
  request_result:
    rule:
      use requested/submitted for request side
      use received/completed/rejected for result side

# ============================================================
# 10. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_checks:
    - every new table name conforms to canonical or projection naming rule
    - every new API term appears in glossary before release
    - every persona-linked term uses snapshot/result/request wording rather than mutable truth wording
    - dashboard/review/timeline labels do not misrepresent projection as canonical record
  release_blockers:
    - same term used for both canonical record and projection without distinction
    - local LifeOS field implies mutable persona truth
    - operator term ambiguous with user-facing term
