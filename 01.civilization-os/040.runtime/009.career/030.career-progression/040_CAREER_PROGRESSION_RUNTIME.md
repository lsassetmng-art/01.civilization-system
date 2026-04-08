# ============================================================
# CAREER PROGRESSION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for career progression structures.

# 2. RUNTIME STATE

- active progression-record state
- progression-event resolution state
- progression-state transition state
- result publication state

# 3. EXECUTION RULES

- subject scope and progression scope must resolve before progression execution
- event and state transitions must be explicit before result publication
- attributable level change must be preserved
- hidden progression mutation is prohibited

# 4. FAILURE HANDLING

- missing subject or progression scope -> reject
- invalid event or state binding -> reject
- hidden progression mutation -> fail closed

