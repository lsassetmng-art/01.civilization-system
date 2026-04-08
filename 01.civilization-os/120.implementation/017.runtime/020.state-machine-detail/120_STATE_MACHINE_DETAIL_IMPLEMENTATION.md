# ============================================================
# STATE MACHINE DETAIL
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for detailed runtime state machines.

# 2. IMPLEMENTATION TARGETS

- machine/state handling
- transition-rule handling
- guard evaluation
- transition publication
- audit publication

# 3. DATA / STATE

Canonical structures:
- runtime_state_machine
- runtime_state_detail
- runtime_transition_rule
- runtime_transition_guard

# 4. EXECUTION

- resolve explicit current state and target rule
- evaluate all guards before transition
- publish only validated transition outcome
- reject hidden transition paths

# 5. VALIDATION

- reject missing transition rule
- reject guard validation failure
- reject hidden transition path

# 6. OBSERVABILITY

- state-machine audit
- transition visibility
- guard evaluation visibility

