# ============================================================
# STORY ARC
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for story arcs.

# 2. INTEGRATION SCOPE

- story arcs to scene/branch/resolution consumers
- arc phases and conditions to runtime/progression consumers
- story-arc audit to operations

# 3. INTEGRATION RULES

- arc scope, phase order, and condition set must be explicit before handoff
- active arc handoff must preserve arc identity and status
- hidden arc mutation must not cross boundary
- ambiguous arc state must fail closed

