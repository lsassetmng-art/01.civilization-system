# ============================================================
# EPIDEMIC CALCULATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for epidemic calculation.

# 2. IMPLEMENTATION TARGETS

- epidemic profile resolution
- infection-state calculation
- wave-state handling
- impact publication
- epidemic audit

# 3. DATA / STATE

Canonical structures:
- epidemic_profile
- infection_state
- epidemic_wave
- epidemic_impact_record

# 4. EXECUTION

- resolve explicit epidemic profile
- calculate region/type-bound infection state
- persist wave state before impact publication
- preserve wave identity through publication

# 5. VALIDATION

- reject missing profile
- reject ambiguous wave state
- reject inconsistent region/type scope

# 6. OBSERVABILITY

- infection audit
- wave audit
- epidemic impact audit

