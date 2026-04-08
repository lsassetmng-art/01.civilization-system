# ============================================================
# POLITICAL SYSTEM
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for political system structures.

# 2. RUNTIME STATE

- active political-system definition
- office-structure resolution state
- power-source rule resolution state
- legitimacy/publication state

# 3. EXECUTION RULES

- one active political system must resolve per jurisdiction scope
- office structure and power-source rule must resolve before downstream use
- active legitimacy state must be explicit before publication
- ambiguous active political system is prohibited

# 4. FAILURE HANDLING

- missing jurisdiction scope -> reject
- invalid office or power-source binding -> reject
- ambiguous active political system -> fail closed

