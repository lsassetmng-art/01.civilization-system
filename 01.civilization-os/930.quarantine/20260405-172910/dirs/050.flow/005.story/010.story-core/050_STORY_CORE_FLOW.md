# ============================================================
# STORY CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for story core handling.

# 2. TRIGGER

- story creation/update request
- story version publication
- scope-binding update
- status change request

# 3. MAIN FLOW

1. create or resolve story_definition
2. bind story_scope_binding
3. create or update story_version
4. validate story scope and version consistency
5. persist story_status
6. emit audit trace

# 4. FAILURE FLOW

- missing story scope -> reject
- invalid binding or version state -> reject
- hidden story-core mutation -> fail closed

# 5. OUTPUT

- story core state
- scope/version state
- audit record

