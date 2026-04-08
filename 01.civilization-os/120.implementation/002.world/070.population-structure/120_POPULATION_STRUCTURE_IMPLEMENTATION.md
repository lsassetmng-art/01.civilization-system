# ============================================================
# POPULATION STRUCTURE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for population structure.

# 2. IMPLEMENTATION TARGETS

- distribution calculation
- demographic-state handling
- migration-state handling
- downstream publication
- population audit

# 3. DATA / STATE

Canonical structures:
- population_group
- population_distribution
- demographic_state
- migration_state

# 4. EXECUTION

- calculate distribution by one measurement point
- publish demographic state only after validated distribution
- preserve source/target identity for migration
- persist results before downstream use

# 5. VALIDATION

- reject missing classification
- reject inconsistent migration route
- reject ambiguous measurement point

# 6. OBSERVABILITY

- distribution audit
- demographic audit
- migration audit

