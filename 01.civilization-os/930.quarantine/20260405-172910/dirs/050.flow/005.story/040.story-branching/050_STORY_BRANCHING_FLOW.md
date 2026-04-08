# ============================================================
# STORY BRANCHING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for story branching handling.

# 2. TRIGGER

- branch creation/update
- branch condition update
- branch target update
- branch close/open request

# 3. MAIN FLOW

1. create or resolve story_branch
2. bind branch_condition set
3. bind branch_target set
4. validate branch scope and target consistency
5. persist branch_status
6. emit audit trace

# 4. FAILURE FLOW

- missing branch scope -> reject
- invalid condition or target binding -> reject
- hidden branch mutation -> fail closed

# 5. OUTPUT

- branch state
- condition/target state
- audit record

