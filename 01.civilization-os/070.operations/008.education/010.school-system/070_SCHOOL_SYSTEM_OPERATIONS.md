# ============================================================
# SCHOOL SYSTEM
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for school system structures.

# 2. OPERATIONAL CONTROLS

- school-definition review
- term review
- enrollment inspection
- school audit inspection

# 3. FAILURE OPERATIONS

- missing school scope -> reject
- invalid term binding -> block
- hidden enrollment mutation -> fail closed

