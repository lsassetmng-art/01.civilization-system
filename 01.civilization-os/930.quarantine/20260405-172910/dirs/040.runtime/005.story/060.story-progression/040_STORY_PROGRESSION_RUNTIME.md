# ============================================================
# STORY PROGRESSION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for story progression.

# 2. RUNTIME STATE

- active progression record
- step resolution state
- checkpoint resolution state
- active/frozen progression state

# 3. EXECUTION RULES

- progression scope, step order, and checkpoints must resolve before publication
- frozen state must block unauthorized progression mutation
- active and frozen states must be explicit
- hidden progression mutation is prohibited

# 4. FAILURE HANDLING

- missing progression scope -> reject
- invalid step or checkpoint binding -> reject
- hidden progression mutation -> fail closed

