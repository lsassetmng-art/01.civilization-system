# ============================================================
# STORY CORE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for story core structures.

# 2. RUNTIME STATE

- active story-definition state
- scope-binding resolution state
- version publication state
- active/suspended state

# 3. EXECUTION RULES

- story scope, scope binding, and version must resolve before publication
- one active story state must be explicit per story context
- active and suspended states must be explicit
- hidden story-core mutation is prohibited

# 4. FAILURE HANDLING

- missing story scope -> reject
- invalid binding or version state -> reject
- hidden story-core mutation -> fail closed

