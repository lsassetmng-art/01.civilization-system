# ============================================================
# RELATIONSHIP
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for persona relationships.

# 2. RUNTIME STATE

- relationship context
- party resolution state
- status-window validation state
- relationship-event publication state

# 3. EXECUTION RULES

- relationship parties must resolve explicitly before relationship publication
- status windows must not overlap incompatibly
- relationship-event publication must follow persisted state update
- hidden relationship mutation is prohibited

# 4. FAILURE HANDLING

- missing relationship party -> reject
- incompatible status overlap -> reject
- hidden relationship mutation -> fail closed

