# ============================================================
# REWARD GRANT
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for reward grants.

# 2. RUNTIME STATE

- active grant request state
- approval validation state
- target resolution state
- grant application state

# 3. EXECUTION RULES

- grant approval must resolve before application
- target scope must resolve explicitly
- applied status must follow approved status
- unauthorized grant application is prohibited

# 4. FAILURE HANDLING

- missing target -> reject
- unauthorized grant -> reject
- ambiguous approval/applied state -> fail closed

