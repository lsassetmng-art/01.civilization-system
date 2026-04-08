# ============================================================
# POPULATION STRUCTURE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for population structure.

# 2. INFRASTRUCTURE SCOPE

- distribution storage
- demographic update path
- migration-state persistence
- publication/audit path

# 3. INFRASTRUCTURE RULES

- one measurement point must back each distribution publication
- migration persistence must preserve source/target identity
- demographic publication follows durable distribution storage
- infrastructure ambiguity must fail closed

