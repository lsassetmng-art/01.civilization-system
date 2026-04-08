# ============================================================
# INFRASTRUCTURE PLACEMENT
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for infrastructure placement.

# 2. RUNTIME STATE

- placement validation state
- coordinate binding state
- placement publication state
- violation publication state

# 3. EXECUTION RULES

- placement requires explicit rule resolution
- coordinate scope must validate before publication
- violation state must persist before rejection
- unresolved region binding must block publication

# 4. FAILURE HANDLING

- missing placement rule -> reject
- invalid coordinate scope -> reject
- region mismatch -> fail closed

