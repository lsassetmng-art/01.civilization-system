# ============================================================
# STORY BRANCHING
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for story branching.

# 2. RUNTIME STATE

- active branch state
- branch-condition resolution state
- branch-target resolution state
- active/closed branch state

# 3. EXECUTION RULES

- branch scope, conditions, and targets must resolve before publication
- branch targets must remain explicit
- active and closed states must be explicit
- hidden branch mutation is prohibited

# 4. FAILURE HANDLING

- missing branch scope -> reject
- invalid condition or target binding -> reject
- hidden branch mutation -> fail closed

