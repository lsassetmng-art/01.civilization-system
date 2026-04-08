# ============================================================
# STORY RESOLUTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for story resolution handling.

# 2. TRIGGER

- resolution creation/update
- resolution condition update
- resolution result publication
- resolution close/open request

# 3. MAIN FLOW

1. create or resolve story_resolution
2. bind resolution_condition set
3. bind resolution_result set
4. validate resolution scope and result consistency
5. persist resolution_status
6. emit audit trace

# 4. FAILURE FLOW

- missing resolution scope -> reject
- invalid condition or result binding -> reject
- hidden resolution mutation -> fail closed

# 5. OUTPUT

- resolution state
- condition/result state
- audit record

