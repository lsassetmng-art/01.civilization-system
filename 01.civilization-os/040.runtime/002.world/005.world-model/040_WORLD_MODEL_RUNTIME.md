# ============================================================
# WORLD MODEL
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for top-level world state.

# 2. RUNTIME STATE

- active world context
- active logical timeframe
- world readiness state
- world status publication state

# 3. EXECUTION RULES

- one active timeframe per world
- region hierarchy must validate before readiness publication
- world status updates must be explicit
- ambiguous world activation must fail closed

# 4. FAILURE HANDLING

- missing active world -> reject
- multiple active timeframes -> reject
- inconsistent hierarchy -> fail closed

