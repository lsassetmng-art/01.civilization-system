# ============================================================
# WORLD MODEL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for top-level world state control.

# 2. TRIGGER

- world startup
- world phase change
- world state refresh request

# 3. MAIN FLOW

1. resolve active world
2. resolve active world timeframe
3. resolve active global/world status
4. validate region structure consistency
5. publish world-ready state
6. emit audit trace

# 4. FAILURE FLOW

- missing active world -> reject
- multiple active timeframes -> reject
- inconsistent region hierarchy -> fail closed
- ambiguous world status -> reject

# 5. OUTPUT

- validated world state
- world timeframe position
- world audit record

