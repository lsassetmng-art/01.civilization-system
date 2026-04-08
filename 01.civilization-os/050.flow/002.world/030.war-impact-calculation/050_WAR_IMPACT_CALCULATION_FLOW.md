# ============================================================
# WAR IMPACT CALCULATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for war impact calculation.

# 2. TRIGGER

- war state update
- battle result ingestion
- scheduled war impact recomputation

# 3. MAIN FLOW

1. resolve active war_state
2. resolve applicable impact profile
3. calculate impact by target scope
4. persist war_impact_record
5. update recovery state where applicable
6. emit audit trace

# 4. FAILURE FLOW

- missing active war state -> reject
- inconsistent target scope -> reject
- invalid recovery binding -> fail closed

# 5. OUTPUT

- war impact record
- recovery state update
- audit record

