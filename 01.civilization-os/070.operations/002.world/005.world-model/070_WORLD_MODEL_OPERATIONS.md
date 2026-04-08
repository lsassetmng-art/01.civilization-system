# ============================================================
# WORLD MODEL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for top-level world control.

# 2. OPERATIONAL CONTROLS

- active world review
- timeframe review
- region hierarchy inspection
- world readiness monitoring

# 3. FAILURE OPERATIONS

- missing active world -> reject and alert
- multiple active timeframes -> block progression
- inconsistent hierarchy -> fail closed

