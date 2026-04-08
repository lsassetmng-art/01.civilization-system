# ============================================================
# FOOD SERVICE SANITATION AND INSPECTION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for FOOD SERVICE SANITATION AND INSPECTION.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- food_service_sanitation_inspection_rule

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
- code
- enabled_flag
- version
- created_at
- updated_at
- facility_type_code
- sanitation_mode_code
- inspection_interval_code
- escalation_rule_code
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- none beyond PK at this layer unless explicitly promoted later

FK:
- soft reference by canonical id/code unless same-domain lifecycle ownership is proven stable

Indexes:
- idx_food_service_sanitation_inspection_rule_facility_type_code
- idx_food_service_sanitation_inspection_rule_sanitation_mode_code
- idx_food_service_sanitation_inspection_rule_effective_from
- idx_food_service_sanitation_inspection_rule_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
