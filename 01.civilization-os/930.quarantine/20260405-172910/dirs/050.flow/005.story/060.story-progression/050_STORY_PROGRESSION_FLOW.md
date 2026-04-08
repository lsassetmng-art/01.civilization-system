# ============================================================
# STORY PROGRESSION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for story progression handling.

# 2. TRIGGER

- progression update
- step update
- checkpoint update
- freeze/unfreeze request

# 3. MAIN FLOW

1. create or resolve story_progression_record
2. bind progression_step set
3. bind progression_checkpoint set
4. validate progression scope and deterministic step order
5. persist progression_status
6. emit audit trace

# 4. FAILURE FLOW

- missing progression scope -> reject
- invalid step or checkpoint binding -> reject
- hidden progression mutation -> fail closed

# 5. OUTPUT

- progression state
- step/checkpoint state
- audit record

