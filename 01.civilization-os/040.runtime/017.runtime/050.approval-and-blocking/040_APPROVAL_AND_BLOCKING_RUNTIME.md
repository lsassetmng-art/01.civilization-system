# ============================================================
# APPROVAL AND BLOCKING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for approval and blocking.

# 2. RUNTIME STATE

- active approval-request state
- block-rule resolution state
- approval/block decision state
- final execution-permission state

# 3. EXECUTION RULES

- request scope must resolve before approval or blocking decision
- block record must exist before blocked publication
- ambiguous approval/block state is prohibited
- hidden blocking without record is prohibited

# 4. FAILURE HANDLING

- missing request scope -> reject
- hidden block without record -> reject
- ambiguous approval/block state -> fail closed

