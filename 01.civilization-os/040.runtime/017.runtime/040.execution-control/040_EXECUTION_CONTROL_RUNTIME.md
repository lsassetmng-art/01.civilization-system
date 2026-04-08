# ============================================================
# EXECUTION CONTROL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for execution controllers.

# 2. RUNTIME STATE

- active execution-controller state
- execution-window resolution state
- execution-mode state
- execution blocked/active state

# 3. EXECUTION RULES

- one active controller state must resolve per controller scope
- incompatible execution windows must not overlap
- blocked execution must not continue silently
- mode change must complete before downstream execution handoff

# 4. FAILURE HANDLING

- missing controller scope -> reject
- incompatible overlapping window -> reject
- blocked execution continuation -> fail closed

