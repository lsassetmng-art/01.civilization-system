# ============================================================
# STATE MACHINE OVERVIEW
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the concrete implementation model for
shared state machine handling.

# 2. STORAGE

State source tables remain domain-owned.
Shared state machine layer defines canonical transition contract only.

Common fields:
- current_state
- previous_state
- transition_code
- transition_reason
- changed_at
- changed_by

# 3. CONTRACTS

Transition request:
- entity_type
- entity_id
- current_state
- requested_state
- transition_reason
- actor_context

Transition result:
- accepted
- resulting_state
- rejection_code
- audit_trace_id

# 4. EXECUTION

1. validate entity and current state
2. load transition map
3. evaluate guards
4. apply or reject
5. write audit trail
6. publish follow-up event if needed

# 5. AUTHORIZATION

Transitions must be evaluated with explicit actor class.
Implicit privilege escalation is prohibited.

# 6. AUDIT

Audit fields:
- entity_type
- entity_id
- from_state
- to_state
- guard_result
- actor_class
- executed_at

# 7. FAILURE HANDLING

Fail closed on:
- unknown state
- invalid transition
- missing guard definition
- partial write risk
