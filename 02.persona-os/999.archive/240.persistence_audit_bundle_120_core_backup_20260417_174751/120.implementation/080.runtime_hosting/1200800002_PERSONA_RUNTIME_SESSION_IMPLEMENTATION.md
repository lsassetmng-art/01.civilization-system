# ============================================================
# PERSONA RUNTIME SESSION IMPLEMENTATION
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / runtime session
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Session states

Allowed states:
- `created`
- `starting`
- `active`
- `paused`
- `snapshotting`
- `restoring`
- `ended`
- `failed`

## Session create endpoint

### POST /persona/v1/runtime-sessions

Request:
```json
{
  "persona_root_id": "01PERSROOT...",
  "release_id": "01REL...",
  "variant_key": "default",
  "started_by_actor_id": "01ACTOR..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "runtime_session_id": "01RTS...",
    "state": "created"
  }
}
```

## Transition rules

- `created -> starting -> active`
- `active -> paused -> active`
- `active -> snapshotting -> active`
- `active -> restoring -> active`
- `active -> ended`
- any active state may go to `failed`

## Persistence

Required tables:
- `runtime_session`
- `runtime_session_state_log`
- `runtime_session_surface_binding`
- `runtime_session_error_log`

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: runtime_hosting

minimum_exact_contract:
- define authoritative operation names
- define request-side required identifiers
- define response-side success and reject families
- define validation gates
- define state transition or resolution boundaries
- define persistence touchpoints
- define retry and dead-letter behavior where applicable

minimum_error_families:
- invalid_request
- authority_blocked
- lifecycle_blocked
- conflict_or_duplicate where applicable
- internal_retryable where applicable
- internal_terminal

minimum_acceptance_targets:
- success path
- reject or blocked path
- audit persistence proof
- retry-safe path where applicable

implementation_ready_note:
This reinforcement does not replace the authored content above.
It marks the minimum exact-ready items that must be made explicit
before implementation is considered complete for this document.

# EXACT PAYLOAD FIXATION

exact_payload_domain: runtime_session
fixed_at: 20260417_164735

create_session_request:
  required_fields:
    - persona_id
    - release_input_id
    - host_context
    - actor_or_system_id

heartbeat_request:
  required_fields:
    - session_id
    - heartbeat_at

terminate_request:
  required_fields:
    - session_id
    - terminal_reason
    - actor_or_system_id

session_response_required_fields:
- session_id
- persona_id
- session_status
- release_lineage_id
- started_at
- last_heartbeat_at
- terminal_reason

fixed_session_status_family:
- created
- active
- suspended
- resumed
- terminating
- terminated
- expired

# EXACT CODE FAMILY FIXATION

exact_code_family_domain: runtime_session
fixed_at: 20260417_164945

fixed_session_status_family:
- created
- active
- suspended
- resumed
- terminating
- terminated
- expired

fixed_terminal_reason_family:
- normal_terminate
- explicit_stop
- heartbeat_timeout
- host_failure
- release_input_invalid
- internal_terminal

fixed_result_code_family:
- SESSION_CREATE_SUCCESS
- SESSION_ACTIVATE_SUCCESS
- SESSION_SUSPEND_SUCCESS
- SESSION_RESUME_SUCCESS
- SESSION_TERMINATE_SUCCESS
- SESSION_EXPIRE_SUCCESS
- SESSION_BLOCKED

rules:
- terminal_reason is mandatory for terminated and expired
- expired must not be merged into terminated
- blocked create must not reuse terminate codes

# EXACT STATE ENUM AND TRANSITION FIXATION

exact_state_transition_domain: runtime_session
fixed_at: 20260417_165940

session_status_enum:
- created
- active
- suspended
- resumed
- terminating
- terminated
- expired
- blocked

terminal_reason_enum:
- normal_terminate
- explicit_stop
- heartbeat_timeout
- host_failure
- release_input_invalid
- internal_terminal

session_transition_table:
- created -> active : activate_session
- active -> suspended : suspend_session
- suspended -> resumed : resume_session
- resumed -> active : resume_complete
- active -> terminating : terminate_requested
- suspended -> terminating : terminate_requested
- terminating -> terminated : terminate_complete
- active -> expired : heartbeat_timeout
- created -> blocked : release_input_invalid

rules:
- terminated and expired require terminal_reason
- blocked is terminal for create failure
- expired must not be collapsed into terminated

# EXACT REQUEST RESPONSE EXAMPLES

exact_example_domain: runtime_session
fixed_at: 20260417_174222

create_session_request_example:
  persona_id: persona_001
  release_input_id: rel_input_001
  host_context: web_runtime
  actor_or_system_id: runtime_host_001

create_session_response_example:
  session_id: session_001
  persona_id: persona_001
  session_status: active
  release_lineage_id: rel_001
  result_code: SESSION_CREATE_SUCCESS

terminate_request_example:
  session_id: session_001
  terminal_reason: explicit_stop
  actor_or_system_id: runtime_host_001
