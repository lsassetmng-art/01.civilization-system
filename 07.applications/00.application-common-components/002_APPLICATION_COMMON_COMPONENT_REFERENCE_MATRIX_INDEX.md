# ============================================================
# APPLICATION COMMON COMPONENT REFERENCE MATRIX INDEX
# ============================================================

status: canonical
layer: applications
domain: common-component-reference-matrix
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This index defines the role of the
application common component reference matrix.

The matrix exists to show:
- which application reuses which common component
- whether the reuse is current or planned
- which parts remain app-specific

# ============================================================
# 2. FILES
# ============================================================

- 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX_INDEX.md
- 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX.md

# ============================================================
# 3. RELATION TO OTHER FILES
# ============================================================

Integrated catalog:
- defines what common components exist

Ledger:
- defines canonical owner and maturity

Reference matrix:
- defines per-application reuse mapping

# ============================================================
# 4. USAGE
# ============================================================

Use this matrix when:
- designing a new app
- checking cross-app reuse coverage
- preventing duplicate design work
- deciding whether a new feature should be promoted to common
- reviewing residual app-specific scope

# ============================================================
