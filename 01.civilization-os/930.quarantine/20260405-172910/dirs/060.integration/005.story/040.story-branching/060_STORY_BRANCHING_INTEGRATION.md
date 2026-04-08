# ============================================================
# STORY BRANCHING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for story branching.

# 2. INTEGRATION SCOPE

- branches to progression and resolution consumers
- branch conditions and targets to runtime decision consumers
- story-branching audit to operations

# 3. INTEGRATION RULES

- branch scope, conditions, and targets must be explicit before handoff
- active branch handoff must preserve branch identity and status
- hidden branch mutation must not cross boundary
- ambiguous branch state must fail closed

