# ============================================================
# AIWORKER AUDIT AND OUTBOX EMISSION CONTRACT EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact side-effect contract for audit logging and event emission.

audit_write_principle:
- canonical mutation must produce audit evidence
- audit evidence is stored in worker_state_change_log and family-specific history where applicable
- audit write occurs in the same mutation transaction direction as the canonical update
- missing audit write invalidates success for audit-required functions

minimum_audit_fields:
- worker_id
- state_family_code
- old_state_code
- new_state_code
- change_reason_code
- changed_at
- changed_by

outbox_emission_principle:
- business-facing result return is event-driven
- event_outbox row is the canonical emission staging surface inside aiworker
- outbox row is written after mutation decision is known
- outbox row carries summary and correlation, not raw secret internals

minimum_outbox_fields:
- event_id
- event_type
- source_system
- source_entity_type
- source_entity_id
- related_business_request_id
- related_worker_id
- summary_code
- payload_ref
- emitted_at

emission_policy_by_family:
- assignment state mutation:
  required_event:
  - AIWORKER_ASSIGNMENT_DECIDED or AIWORKER_ASSIGNMENT_REJECTED

- availability state mutation:
  required_event:
  - AIWORKER_EXECUTION_STATE_CHANGED

- repair transition:
  required_event:
  - AIWORKER_REPAIR_STATE_CHANGED

- rebuild transition:
  required_event:
  - AIWORKER_REBUILD_STATE_CHANGED

- tendency update:
  optional_event:
  - AIWORKER_RESULT_SUMMARY_READY when business correlation is needed

- growth event:
  optional_event:
  - AIWORKER_RESULT_SUMMARY_READY when business correlation is needed

- privileged context change:
  required_event:
  - AIWORKER_ESCALATION_REQUIRED or equivalent restricted summary when policy says so

hard_rules:
- outbox emission does not substitute for audit
- audit does not substitute for outbox where emission is required
- raw payload blobs must not be emitted as direct unrestricted business-facing truth
