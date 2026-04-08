# ============================================================
# COST TO EVENT INFLUENCE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for COST TO EVENT INFLUENCE.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- cost_event_influence_binding

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
- version
- created_at
- updated_at
- indicator_code
- event_type_code
- influence_mode_code
- influence_weight_value
- country_scope

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- none beyond PK at this layer unless explicitly promoted later

FK:
- soft reference by canonical id/code unless same-domain lifecycle ownership is proven stable

Indexes:
- idx_cost_event_influence_binding_indicator_code
- idx_cost_event_influence_binding_event_type_code
- idx_cost_event_influence_binding_country_scope

Checks:
- influence_weight_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
