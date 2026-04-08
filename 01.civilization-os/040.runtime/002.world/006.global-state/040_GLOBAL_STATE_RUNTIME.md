# ============================================================
# GLOBAL STATE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime behavior for global-state snapshots.

# 2. RUNTIME STATE

- active snapshot cycle
- loaded indicator set
- alert evaluation state
- adjustment publication state

# 3. EXECUTION RULES

- snapshot must be time-bounded
- indicator collection must complete before alert evaluation
- adjustment flags must preserve source scope
- partial snapshot publication is prohibited

# 4. FAILURE HANDLING

- incomplete indicator set -> reject
- conflicting alert evaluation -> reject
- ambiguous adjustment scope -> fail closed

