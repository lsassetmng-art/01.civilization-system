# ============================================================
# GOVERNMENT CORE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for government core structures.

# 2. IMPLEMENTATION TARGETS

- government-unit handling
- authority/term handling
- legitimacy/stability handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- government_unit
- governing_authority
- authority_term
- government_status

# 4. EXECUTION

- resolve explicit government scope and authority identity
- persist active term before authority publication
- publish legitimacy/stability only after validated state
- reject ambiguous authority state

# 5. VALIDATION

- reject missing government scope
- reject incompatible active term overlap
- reject ambiguous governing authority

# 6. OBSERVABILITY

- government audit
- authority/term visibility
- legitimacy/stability visibility

