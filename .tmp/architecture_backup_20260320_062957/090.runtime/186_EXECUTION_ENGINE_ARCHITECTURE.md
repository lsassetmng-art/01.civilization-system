# ============================================================
# EXECUTION ENGINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Execution engine runs validated handlers for accepted events.

responsibilities:
- invoke correct handler
- enforce execution boundaries
- collect results
- emit explicit completion or failure outputs

rules:
- execution must be handler-bound and deterministic
- handler may not bypass permission, law, or validation stages
- handler side effects must be represented as explicit state transition requests or downstream events
- direct unmanaged writes are forbidden

execution_outputs:
- handler_success
- handler_failure
- downstream_events
- persistence_requests
- notifications_requested

final_rule:
Execution engine may run handlers,
but handler effects must remain explicit and auditable.
