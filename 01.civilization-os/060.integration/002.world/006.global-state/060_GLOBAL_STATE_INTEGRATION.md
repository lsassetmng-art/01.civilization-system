# ============================================================
# GLOBAL STATE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for global-state snapshots.

# 2. INTEGRATION SCOPE

- indicator collectors to snapshot assembly
- alert state to operations/monitoring
- adjustment flags to runtime/governance review
- snapshot audit to operations

# 3. INTEGRATION RULES

- snapshot assembly requires explicit time boundary
- alerts must preserve originating snapshot identity
- adjustment flags must preserve scope and reason
- partial snapshot handoff is prohibited

