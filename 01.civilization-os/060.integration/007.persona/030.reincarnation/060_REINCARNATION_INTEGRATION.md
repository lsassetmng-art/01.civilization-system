# ============================================================
# REINCARNATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona reincarnation.

# 2. INTEGRATION SCOPE

- source/target persona to reincarnation record
- continuity trace to downstream identity consumers
- reincarnation state to society/runtime layers
- reincarnation audit to operations

# 3. INTEGRATION RULES

- source and target identities must be explicit before publication
- continuity trace must accompany reincarnation handoff
- hidden transition must not cross boundary
- rejected reincarnation must preserve evidence

