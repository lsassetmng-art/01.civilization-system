# ============================================================
# WAR IMPACT CALCULATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for war impact calculation.

# 2. RUNTIME STATE

- active war state
- active impact profile
- impact publication state
- recovery tracking state

# 3. EXECUTION RULES

- war impact calculation requires explicit active war state
- target scope must be validated before publication
- recovery tracking must bind to one conflict scope
- unresolved conflict status must block final publication

# 4. FAILURE HANDLING

- missing war state -> reject
- inconsistent target scope -> reject
- invalid recovery binding -> fail closed

