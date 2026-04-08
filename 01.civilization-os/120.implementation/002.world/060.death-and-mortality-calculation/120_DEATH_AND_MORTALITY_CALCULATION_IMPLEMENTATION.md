# ============================================================
# DEATH AND MORTALITY CALCULATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for mortality calculation.

# 2. IMPLEMENTATION TARGETS

- mortality-profile resolution
- regional mortality evaluation
- aggregate persistence
- impact publication
- mortality audit

# 3. DATA / STATE

Canonical structures:
- mortality_profile
- mortality_state
- death_record_aggregate
- mortality_impact_record

# 4. EXECUTION

- resolve explicit profile
- calculate region-bound mortality state
- persist aggregate before impact publication
- preserve region/period identity through publication

# 5. VALIDATION

- reject missing profile
- reject inconsistent aggregate
- reject ambiguous severity source

# 6. OBSERVABILITY

- mortality audit
- aggregate audit
- impact audit

