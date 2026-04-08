# ============================================================
# CITY BUILDER
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for city builder systems.

# 2. INTEGRATION SCOPE

- builder session to zoning validation
- validated city state to world/runtime consumers
- city builder audit to operations

# 3. INTEGRATION RULES

- zoning bundle must be explicit before publication handoff
- invalid zoning state must not cross publication boundary
- city publication must preserve city and nation identity
- ambiguous builder state must fail closed

