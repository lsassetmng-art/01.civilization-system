# ============================================================
# PROVENANCE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for provenance handling.

# 2. TRIGGER

- provenance create/update
- actor reference update
- provenance rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve provenance_record
2. bind provenance_actor_reference set
3. bind provenance_rule set
4. validate provenance scope and actor/rule consistency
5. persist provenance_status
6. emit audit trace

# 4. FAILURE FLOW

- missing provenance scope -> reject
- invalid actor or rule binding -> reject
- hidden provenance mutation -> fail closed

# 5. OUTPUT

- provenance state
- actor/rule/status
- audit record

