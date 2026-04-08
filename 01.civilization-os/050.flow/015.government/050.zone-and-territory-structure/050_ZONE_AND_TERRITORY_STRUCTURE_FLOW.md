# ============================================================
# ZONE AND TERRITORY STRUCTURE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for zone and territory structures.

# 2. TRIGGER

- territory creation/update
- zoning update
- boundary/dispute review

# 3. MAIN FLOW

1. create or resolve territory_unit
2. bind zone_definition set
3. bind territorial_boundary set
4. validate hierarchy and dispute state
5. persist territorial_status
6. emit audit trace

# 4. FAILURE FLOW

- invalid territory hierarchy -> reject
- missing boundary identity -> reject
- unresolved territorial ambiguity -> fail closed

# 5. OUTPUT

- territory state
- zone/boundary state
- status audit

