# ============================================================
# CIVIL SERVICE ELIGIBILITY
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for civil service eligibility.

# 2. OPERATIONAL CONTROLS

- rule/requirement review
- candidate-evaluation review
- result inspection
- eligibility audit inspection

# 3. FAILURE OPERATIONS

- missing service-role scope -> reject
- invalid requirement set -> block
- hidden eligibility override -> fail closed

