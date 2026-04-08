# ============================================================
# WORLD MODEL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for top-level world state.

# 2. INFRASTRUCTURE SCOPE

- world-state persistence
- active timeframe persistence
- readiness publication path
- world-status audit sink

# 3. INFRASTRUCTURE RULES

- one active timeframe must be durably resolvable
- readiness publication depends on validated persisted state
- world-status changes must be audit-visible
- infrastructure ambiguity must fail closed

