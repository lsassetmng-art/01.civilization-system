# ============================================================
# FOUNDATION PAYLOAD TO API TRANSPORT MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Maps K1 exact payload meaning to later API transport implementation work.

in_scope_endpoints:
- get_streaming_principal_detail
- list_streaming_principals
- create_streaming_session
- update_streaming_session
- get_streaming_session_detail
- list_streaming_sessions
- transition_streaming_session_state

transport_notes:

principal_detail:
- uses success/data/meta envelope
- data is a single projection object
- no internal or moderation-only fields may be transported

principal_list:
- uses success/data/meta envelope
- data.items is a collection projection
- offset/cursor mutual-exclusion rule applies later at transport level

session_create:
- request must include idempotency_key
- response may use canonical mutation response shape
- transport method/path remain open

session_update:
- partial update semantics remain transport detail
- omitted fields preserve existing values by transport/app logic

session_detail:
- transition_capabilities may be computed and returned in meta
- internal runtime markers must never be transported publicly

session_list:
- query filtering remains allowlist-based
- unknown query keys must resolve to invalid_field later at transport level

session_transition:
- transition_action is required
- reason_code remains optional at meaning level
- transport must preserve auditable mutation semantics

cross_endpoint_note:
- auth carrier placement remains transport-stage detail
- HTTP/RPC binding remains open
- error-to-status mapping remains open
