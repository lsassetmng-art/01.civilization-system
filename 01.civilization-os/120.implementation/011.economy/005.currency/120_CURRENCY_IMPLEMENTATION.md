# ============================================================
# CURRENCY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for currencies.

# 2. IMPLEMENTATION TARGETS

- currency registry
- rate handling
- scope handling
- freeze-state control
- audit publication

# 3. DATA / STATE

Canonical structures:
- currency_definition
- currency_rate
- currency_scope
- currency_status

# 4. EXECUTION

- resolve explicit currency code and issuer scope
- resolve effective rate per decision point
- block frozen currency usage before downstream handoff
- persist freeze-state changes before publication

# 5. VALIDATION

- reject duplicate active currency code
- reject ambiguous rate resolution
- reject frozen currency use

# 6. OBSERVABILITY

- currency audit
- rate audit
- freeze-state visibility

