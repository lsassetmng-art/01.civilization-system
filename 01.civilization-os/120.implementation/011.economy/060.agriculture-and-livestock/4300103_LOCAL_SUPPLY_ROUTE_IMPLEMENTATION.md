# ============================================================
# LOCAL SUPPLY ROUTE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for LOCAL SUPPLY ROUTE.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- local_supply_route_binding

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns
- lifecycle columns

Additional groups:
- trace columns
- period columns
- workflow columns
  - only where applicable

# 5. COLUMNS

- id
- status
- created_at
- updated_at
- producer_ref
- item_code
- route_target_ref
- route_type_code
- priority_order
- country_scope

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_local_supply_route_binding_producer_ref
- idx_local_supply_route_binding_item_code
- idx_local_supply_route_binding_route_target_ref
- idx_local_supply_route_binding_priority_order

Checks:
- priority_order >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this agriculture / livestock concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid producer / route / retail / city linkage
- lifecycle ambiguity
- invalid output, surplus, risk, or KPI semantics
