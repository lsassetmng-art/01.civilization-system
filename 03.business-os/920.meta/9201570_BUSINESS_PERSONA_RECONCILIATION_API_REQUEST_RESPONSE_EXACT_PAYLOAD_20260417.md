# ============================================================
# BUSINESS PERSONA RECONCILIATION API REQUEST RESPONSE EXACT PAYLOAD
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact request and response payloads for downstream reconciliation flows.

reconciliation_request_required_fields:
- reconciliation_request_id
- requested_by
- reconciliation_scope_type
- reconciliation_scope_id when applicable
- target_consumer_system = PersonaOS
- requested_mode
- requested_at

reconciliation_response_required_fields:
- reconciliation_request_id
- request_status
- accepted_at when accepted
- rejection_reason_code when rejected
- reconciliation_job_id when created

requested_mode_enum:
- snapshot_refresh
- event_replay
- divergence_check

contract_rule:
- reconciliation is for downstream convergence to Business truth
- reconciliation API must not be used to overwrite Business truth from Persona state
- response payload must make job creation or rejection explicit

result:
- Reconciliation API request and response exact payload fixed as a canonical meta record.
