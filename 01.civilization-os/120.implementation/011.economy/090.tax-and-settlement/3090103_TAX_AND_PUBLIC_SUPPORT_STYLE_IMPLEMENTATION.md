# ============================================================
# TAX AND PUBLIC SUPPORT STYLE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for TAX AND PUBLIC SUPPORT STYLE.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- tax_public_support_style_binding

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
- nation_ref
- style_type_code
- style_value_code
- weight_value
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
- idx_tax_public_support_style_binding_nation_ref
- idx_tax_public_support_style_binding_style_type_code
- idx_tax_public_support_style_binding_effective_from
- idx_tax_public_support_style_binding_effective_to

Checks:
- weight_value >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
