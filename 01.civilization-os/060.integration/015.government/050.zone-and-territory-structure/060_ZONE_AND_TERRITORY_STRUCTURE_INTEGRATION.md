# ============================================================
# ZONE AND TERRITORY STRUCTURE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for zone and territory structures.

# 2. INTEGRATION SCOPE

- territory state to world/map consumers
- zone rules to city/nation runtime consumers
- boundary/dispute state to law/security consumers
- territory audit to operations

# 3. INTEGRATION RULES

- territory hierarchy and boundary identity must be explicit before handoff
- unresolved territorial ambiguity must not cross boundary
- dispute state must preserve territory identity
- zone publication must preserve governing scope

