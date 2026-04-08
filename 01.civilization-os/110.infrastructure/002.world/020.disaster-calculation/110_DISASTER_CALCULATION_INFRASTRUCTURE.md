# ============================================================
# DISASTER CALCULATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for disaster calculation.

# 2. INFRASTRUCTURE SCOPE

- disaster profile storage
- risk evaluation path
- occurrence persistence
- impact publication path

# 3. INFRASTRUCTURE RULES

- profile source must be durably resolvable
- occurrence must persist before impact publication
- impact path must preserve region and disaster identity
- infrastructure inconsistency must fail closed

