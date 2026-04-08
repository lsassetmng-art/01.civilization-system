# ============================================================
# INITIAL NATION AND CITY SET
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for initial nation and city sets.

# 2. OPERATIONAL CONTROLS

- set completeness review
- identity-binding review
- publication-state inspection
- initial-set audit inspection

# 3. FAILURE OPERATIONS

- incomplete city assignment -> reject
- invalid identity binding -> block
- ambiguous set status -> fail closed

