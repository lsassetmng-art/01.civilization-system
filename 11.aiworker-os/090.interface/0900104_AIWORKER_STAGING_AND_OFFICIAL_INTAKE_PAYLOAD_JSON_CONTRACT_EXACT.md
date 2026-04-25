# ============================================================
# AIWORKER STAGING AND OFFICIAL INTAKE PAYLOAD JSON CONTRACT EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON payload contracts for staging_row and official_intake_request.

staging_payload_principle:
- staging payload is the normalized mutation candidate
- staging payload has enough structure for gate validation
- staging payload is deterministic and replay-safe

staging_payload_contract:
```json
{
  "payload_version": "1.0",
  "staging_type": "text",
  "controlled_function_code": "text",
  "target_truth_surface": "text",
  "worker_id": "uuid|null",
  "business_request_id": "uuid|null",
  "state_family_code": "text",
  "requested_transition_code": "text|null",
  "normalized_candidate": {
    "target_key": "object",
    "new_values": "object",
    "close_previous_current_row": "boolean|null",
    "history_write_required": "boolean",
    "event_required": "boolean"
  },
  "gate_context": {
    "gate_code": "text",
    "approval_required_flag": "boolean",
    "audit_required_flag": "boolean",
    "restricted_flag": "boolean",
    "privileged_flag": "boolean"
  },
  "source_refs": {
    "command_id": "uuid|null",
    "draft_id": "uuid|null",
    "request_hash": "text"
  },
  "created_at": "timestamptz"
}
```

official_intake_payload_principle:
- official intake payload is gate-bound execution material
- official intake payload is the direct function-input source
- only controlled functions may process it

official_intake_payload_contract:
```json
{
  "payload_version": "1.0",
  "intake_type": "text",
  "controlled_function_code": "text",
  "target_truth_surface": "text",
  "worker_id": "uuid|null",
  "business_request_id": "uuid|null",
  "gate_code": "text",
  "approval_ticket_id": "text|null",
  "audit_required_flag": "boolean",
  "reason_code": "text|null",
  "execution_candidate": {
    "requested_transition_code": "text|null",
    "target_key": "object",
    "new_values": "object"
  },
  "correlation": {
    "staging_id": "uuid",
    "request_hash": "text",
    "client_request_id": "text|null"
  },
  "submitted_at": "timestamptz",
  "submitted_by": "text"
}
```

hard_rules:
- official intake payload must be derivable from staging payload
- official intake payload must not include freeform undocumented fields
- unknown fields must be rejected or dropped under fixed sanitization policy
