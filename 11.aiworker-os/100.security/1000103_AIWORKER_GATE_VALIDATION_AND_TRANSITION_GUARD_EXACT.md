# ============================================================
# AIWORKER GATE VALIDATION AND TRANSITION GUARD EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact validation order before a controlled function may mutate canonical truth.

validation_order:
1. official intake row exists
2. intake status is eligible for processing
3. controlled function code matches requested intake route
4. target truth surface is allowed for that function
5. worker exists when worker-targeted mutation is required
6. worker lifecycle state permits mutation
7. required gate is present
8. approval requirement is satisfied
9. audit requirement is satisfied
10. requested transition is legal from current state
11. payload reference or normalized data exists when required
12. correlation requirement is satisfied for business-originated actions

worker_lifecycle_stop_conditions:
- suspended_flag = true and function is not explicit recovery path
- retired_flag = true
- lifecycle_status prohibits requested mutation family

gate_requirements:
- assignment or availability standard path:
  minimum_gate:
  - GATE_STANDARD

- repair path:
  minimum_gate:
  - GATE_REPAIR

- rebuild path:
  minimum_gate:
  - GATE_REBUILD

- privileged context change:
  minimum_gate:
  - GATE_PRIVILEGED

- restricted handling related mutation:
  minimum_gate:
  - GATE_RESTRICTED

approval_rules:
- if intake has approval_ticket_id requirement, missing approval blocks mutation
- rank, role, and style cannot substitute for approval

audit_rules:
- if audit_required_flag = true, audit write is mandatory
- mutation success without audit side effect is invalid

transition_guard_principle:
- legality is determined by explicit state-family transition tables
- no implicit freeform transition is allowed
- final/destructive/authority-like mutation must have explicit allowed path

hard_rules:
- style does not widen gate
- rank does not bypass transition legality
- controlled function must fail closed on missing validation data
