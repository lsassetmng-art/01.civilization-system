# ============================================================
# STATE MACHINE DETAIL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for detailed state-machine execution.

# 2. RUNTIME STATE

- active runtime-state-machine context
- current runtime-state-detail state
- transition-rule resolution state
- guard-evaluation state

# 3. EXECUTION RULES

- one current state must resolve before transition evaluation
- transition rule and guard set must resolve before transition
- hidden transition path is prohibited
- invalid guard outcome must block transition publication

# 4. FAILURE HANDLING

- missing transition rule -> reject
- guard validation failure -> reject
- hidden transition path -> fail closed

