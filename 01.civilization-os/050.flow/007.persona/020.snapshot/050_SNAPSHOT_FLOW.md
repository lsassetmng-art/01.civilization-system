# ============================================================
# SNAPSHOT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona snapshot creation and release.

# 2. TRIGGER

- snapshot creation request
- snapshot update request
- snapshot release request

# 3. MAIN FLOW

1. resolve persona and snapshot scope
2. create persona_snapshot
3. create explicit snapshot_version
4. bind snapshot_content_ref set
5. validate release readiness
6. persist release state and emit audit trace

# 4. FAILURE FLOW

- missing snapshot content set -> reject
- ambiguous version state -> reject
- invalid release readiness -> fail closed

# 5. OUTPUT

- snapshot state
- version state
- release state

