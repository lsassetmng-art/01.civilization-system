# ============================================================
# WORLD SEED AND GEOGRAPHY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for seed and geography setup.

# 2. INTEGRATION SCOPE

- seed registry to geography generation
- generated continent/zone structure to world model
- geography feature set to placement and event systems
- geography audit to operations

# 3. INTEGRATION RULES

- one explicit seed version per geography build
- geography output must preserve continent/zone lineage
- feature publication requires validated terrain binding
- ambiguous seed version must not cross boundary

