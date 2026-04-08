# ============================================================
# GLOBAL STATE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for global-state snapshots.

# 2. INFRASTRUCTURE SCOPE

- snapshot storage
- indicator collection path
- alert publication path
- adjustment-flag persistence

# 3. INFRASTRUCTURE RULES

- snapshot storage must preserve time boundary
- alert publication depends on completed snapshot persistence
- adjustment flags must preserve attributable origin
- partial snapshot infrastructure state must fail closed

