# ============================================================
# EXECUTION CONTROL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for execution control.

# 2. INTEGRATION SCOPE

- execution controller state to runtime executors
- windows and modes to scheduling consumers
- blocked/active state to approval and operations systems
- execution audit to operations

# 3. INTEGRATION RULES

- controller scope and execution mode must be explicit before handoff
- incompatible window state must not cross boundary
- blocked execution state must preserve blocking reason
- ambiguous execution state must fail closed

