# ============================================================
# COMMERCE BOUNDARY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for persona commerce boundaries.

# 2. IMPLEMENTATION TARGETS

- permission-state handling
- sale-unit handling
- restriction application
- settlement-reference handling
- audit publication

# 3. DATA / STATE

Canonical structures:
- commerce_permission
- sale_unit
- commerce_restriction
- settlement_reference

# 4. EXECUTION

- resolve explicit permission before listing/sale
- validate market scope before publication
- apply restriction before settlement path opens
- preserve sale identity in settlement reference

# 5. VALIDATION

- reject missing commerce permission
- reject invalid market scope
- reject restricted sale publication

# 6. OBSERVABILITY

- commerce audit
- restriction visibility
- settlement visibility

