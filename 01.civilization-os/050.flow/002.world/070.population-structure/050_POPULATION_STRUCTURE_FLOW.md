# ============================================================
# POPULATION STRUCTURE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for population-structure updates.

# 2. TRIGGER

- demographic review cycle
- mortality/fertility/migration update
- explicit distribution recalculation

# 3. MAIN FLOW

1. resolve population groups
2. calculate region-level distribution
3. update demographic state
4. update migration state where applicable
5. persist distribution and demographic results
6. emit audit trace

# 4. FAILURE FLOW

- missing group classification -> reject
- inconsistent source/target migration -> reject
- ambiguous region measurement point -> fail closed

# 5. OUTPUT

- population distribution
- demographic state
- migration state

