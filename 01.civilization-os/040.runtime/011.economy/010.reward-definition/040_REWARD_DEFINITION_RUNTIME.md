# ============================================================
# REWARD DEFINITION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for reward definitions.

# 2. RUNTIME STATE

- active reward definition state
- reward source resolution state
- reward condition validation state
- reward value-set publication state

# 3. EXECUTION RULES

- one reward code resolves to one active definition version
- condition validation must complete before value publication
- source scope must be explicit and attributable
- incompatible version/value state is prohibited

# 4. FAILURE HANDLING

- missing source -> reject
- invalid condition/value compatibility -> reject
- ambiguous definition version -> fail closed

