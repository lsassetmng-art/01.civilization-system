# ============================================================
# CROP AND LIVESTOCK MIX POLICY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CROP AND LIVESTOCK MIX POLICY.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- crop_livestock_mix_policy_rule

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
- producer_type_code
- mix_profile_code
- climate_scope_code
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_crop_livestock_mix_policy_rule_producer_type_code
- idx_crop_livestock_mix_policy_rule_mix_profile_code
- idx_crop_livestock_mix_policy_rule_effective_from
- idx_crop_livestock_mix_policy_rule_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this agriculture / livestock concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid producer / route / retail / city linkage
- lifecycle ambiguity
- invalid output, surplus, risk, or KPI semantics
