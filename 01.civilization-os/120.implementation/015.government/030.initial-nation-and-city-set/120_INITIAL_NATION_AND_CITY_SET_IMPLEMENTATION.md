# ============================================================
# INITIAL NATION AND CITY SET
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for initial nation and city sets.

# 2. IMPLEMENTATION TARGETS

- set handling
- assignment handling
- completeness validation
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- initial_nation_set
- initial_city_set
- initial_assignment
- initial_set_status

# 4. EXECUTION

- build explicit nation/city assignment set
- validate completeness before publication
- publish only after stable status is persisted
- reject partial initial-set publication

# 5. VALIDATION

- reject incomplete city assignment
- reject invalid identity binding
- reject ambiguous set publication state

# 6. OBSERVABILITY

- initial-set audit
- assignment visibility
- publication/completeness visibility

