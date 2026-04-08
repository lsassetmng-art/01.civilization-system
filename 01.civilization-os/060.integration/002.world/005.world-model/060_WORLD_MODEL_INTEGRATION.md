# ============================================================
# WORLD MODEL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for top-level world state.

# 2. INTEGRATION SCOPE

- world model to runtime world activation
- world timeframe to cadence/tick runtime
- world status to operations and audit
- world readiness to upper orchestration layers

# 3. INTEGRATION RULES

- one active world and timeframe must be handed off explicitly
- readiness publication requires validated region structure
- world status changes must be attributable
- ambiguous world activation must not cross boundary

