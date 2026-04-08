# ============================================================
# COMPANY BUILDER
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for company builder systems.

# 2. IMPLEMENTATION TARGETS

- builder-session handling
- ownership-state handling
- validation handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- company_definition
- company_builder_session
- company_ownership_state
- company_builder_validation

# 4. EXECUTION

- open one active builder session per company/scope
- validate ownership before publication
- publish only after validations pass
- reject ambiguous builder or ownership state

# 5. VALIDATION

- reject missing owner scope
- reject ownership ratio inconsistency
- reject ambiguous builder session

# 6. OBSERVABILITY

- company-builder audit
- ownership visibility
- validation/publication visibility

