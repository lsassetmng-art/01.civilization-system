# ============================================================
# AIWORKER COMMAND AND DRAFT PAYLOAD JSON CONTRACT EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON payload contracts for command_row and draft_row.

command_row_payload_principle:
- command payload is request-intent oriented
- command payload is not yet canonical mutation material
- command payload may be incomplete for execution
- command payload must be replay-identifiable

command_row_payload_contract:
```json
{
  "payload_version": "1.0",
  "command_type": "text",
  "source_system": "text",
  "source_actor_type": "text",
  "requested_lane": "text",
  "requested_domain": "text|null",
  "requested_role": "text|null",
  "target_worker_id": "uuid|null",
  "tenant_company_id": "uuid|null",
  "tenant_user_id": "uuid|null",
  "app_scope_code": "text|null",
  "business_request_id": "uuid|null",
  "reason_code": "text|null",
  "requested_transition_code": "text|null",
  "request_context": {
    "intent_code": "text",
    "note_text": "text|null",
    "source_reference_id": "text|null"
  },
  "idempotency": {
    "request_hash": "text",
    "client_request_id": "text|null"
  },
  "requested_at": "timestamptz",
  "requested_by": "text"
}
```

draft_row_payload_principle:
- draft payload is reversible and human-reviewable
- draft payload is richer than command payload
- draft payload still cannot mutate canonical truth directly

draft_row_payload_contract:
```json
{
  "payload_version": "1.0",
  "draft_type": "text",
  "worker_id": "uuid|null",
  "business_request_id": "uuid|null",
  "proposed_state_family_code": "text|null",
  "proposed_transition_code": "text|null",
  "proposal_summary": {
    "headline": "text",
    "summary_code": "text|null",
    "reason_code": "text|null"
  },
  "proposal_details": {
    "candidate_values": "object",
    "human_review_points": ["text"],
    "risk_flags": ["text"]
  },
  "source_command_ref": {
    "command_id": "uuid",
    "request_hash": "text"
  },
  "created_at": "timestamptz"
}
```

hard_rules:
- command payload and draft payload are separate contracts
- draft payload may add normalized hints but is still noncanonical
- neither payload may embed raw billing or ERP records
