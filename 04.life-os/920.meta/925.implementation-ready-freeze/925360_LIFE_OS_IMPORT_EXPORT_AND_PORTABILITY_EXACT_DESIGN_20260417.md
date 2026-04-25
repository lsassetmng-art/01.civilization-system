# ============================================================
# LIFE OS IMPORT / EXPORT / PORTABILITY EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925360
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact design for external import, export, portability package generation, and restore-through-import.
- Keep import normalized, idempotent, and append-first.
- Keep export reproducible and auditable.

principles:
- import is normalized before canonical write
- export is generated from canonical and projection-safe data
- portability package is reproducible from manifest and source rules
- restore does not bypass validation
- import and export are auditable
- signed snapshot references are portable, but mutable persona truth remains outside LifeOS

# ============================================================
# 1. IMPORT MODEL
# ============================================================

import_boundary:
  accepted_sources:
    - csv
    - json
    - mobile_health_bridge
    - calendar_bridge
    - manual_batch_upload
  import_phases:
    - intake
    - schema_validation
    - normalization
    - dedupe
    - canonical_write
    - event_emit
    - projection_refresh

normalized_import_contract:
  required_fields:
    - ingest_job_id
    - source_system_code
    - source_record_key
    - normalized_record_type
    - normalized_payload_json
    - normalized_hash
    - imported_at
    - import_operator
  dedupe_key:
    - source_system_code
    - source_record_key
    - normalized_hash

allowed_normalized_record_types:
  - habit_log
  - health_metric_log
  - goal_progress_event
  - reminder_rule_seed
  - review_note_seed

prohibited_import_behaviors:
  - direct write into projection tables as canonical truth
  - bypass idempotency/dedupe
  - bypass validation via restore path
  - local import creating persona mutable truth

# ============================================================
# 2. EXPORT MODEL
# ============================================================

export_boundary:
  export_types:
    - user_portability_full
    - review_bundle
    - metrics_timeseries
    - goal_history
    - reminder_history
  export_formats:
    - json
    - csv
    - zip_package
  export_generation_rule:
    - generated from canonical records and allowed derived summaries
    - every package must have manifest
    - every package generation must emit export event

export_manifest_fields:
  required:
    - export_job_id
    - export_type
    - format_code
    - generated_at
    - generated_by
    - included_sections_json
    - source_window_start
    - source_window_end
    - record_count
    - package_hash
  optional:
    - signature_ref
    - encryption_profile_code
    - portability_version

allowed_export_sections:
  - habits
  - health_metrics
  - goals
  - review_summaries
  - reminders
  - import_audit_summary
  - persona_display_binding_refs

disallowed_export_sections:
  - mutable persona canonical truth
  - internal provider credentials
  - hidden risk scoring internals without explicit allowed profile

# ============================================================
# 3. PORTABILITY PACKAGE
# ============================================================

portability_package:
  package_structure:
    - manifest.json
    - habits.json
    - health_metrics.json
    - goals.json
    - reminders.json
    - review_summaries.json
    - persona_display_binding_refs.json
    - audit_summary.json
  design_rule:
    - package must be reconstructible from manifest and canonical source data
    - package hash must be deterministic under same source snapshot
    - package may include signed snapshot references, never mutable persona truth

restore_through_import:
  restore_rule:
    - restore re-enters through import pipeline
    - restore does not perform privileged direct insert
    - restore uses source_system_code = portability_restore
  restore_required_checks:
    - manifest validity
    - payload schema validity
    - dedupe validity
    - retention policy compatibility

# ============================================================
# 4. LIFE-PERSONA INTERACTION RULE
# ============================================================

life_persona_portability_rule:
  allowed_portable_persona_fields:
    - persona_id
    - snapshot_id
    - applied_snapshot_id
    - signed_snapshot_ref
    - display_contract_code
  disallowed_portable_persona_fields:
    - mutable persona canonical state
    - memory truth
    - emotion truth
    - growth truth
    - trust truth
    - signature authority internals
  life_to_persona_interaction:
    - same pattern as BusinessOS to PersonaOS
    - request event from LifeOS
    - apply in PersonaOS
    - result event back to LifeOS
    - LifeOS keeps refs only

# ============================================================
# 5. STATE MACHINES
# ============================================================

import_job_state_machine:
  states:
    - received
    - validating
    - normalized
    - deduped
    - accepted_for_write
    - written
    - rejected
    - partially_written
  notes:
    - partially_written allowed only when contract permits record-level accept/reject tracking
    - rejection must include reject_reason_code

export_job_state_machine:
  states:
    - requested
    - generating
    - generated
    - signed
    - downloadable
    - expired
    - failed

restore_job_state_machine:
  states:
    - received
    - manifest_validated
    - validating_payloads
    - importing
    - completed
    - rejected
    - partially_imported

# ============================================================
# 6. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - duplicate import with same dedupe key does not create duplicate canonical records
    - export manifest reproduces same package hash for same source snapshot
    - restore path goes through validation and dedupe
    - signed snapshot references export successfully without copying mutable persona truth
    - projection refresh after import remains rebuildable
  release_blockers:
    - restore path bypasses import validation
    - export includes disallowed mutable persona fields
    - import writes directly into projection as canonical truth
