# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for famine and shortage calculation.

# 2. IMPLEMENTATION TARGETS

- supply-state resolution
- threshold resolution
- famine-risk calculation
- shortage-impact publication
- famine audit

# 3. DATA / STATE

Canonical structures:
- shortage_profile
- food_supply_state
- famine_risk_state
- shortage_impact_record

# 4. EXECUTION

- resolve region-bound supply state
- apply explicit threshold rule
- calculate famine risk before impact publication
- persist risk before downstream use

# 5. VALIDATION

- reject missing supply state
- reject ambiguous threshold
- reject inconsistent impact scope

# 6. OBSERVABILITY

- supply audit
- famine-risk audit
- shortage-impact audit

