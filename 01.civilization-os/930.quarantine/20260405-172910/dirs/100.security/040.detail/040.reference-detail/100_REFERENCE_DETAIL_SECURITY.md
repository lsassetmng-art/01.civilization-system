# ============================================================
# REFERENCE DETAIL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for reference detail structures.

# 2. SECURITY SCOPE

- reference-detail integrity
- target/rule authorization
- active/revised state integrity
- reference-detail audit protection

# 3. SECURITY RULES

- reference scope, targets, and rules must be tamper-evident
- target and rule changes require explicit authorization
- hidden reference-detail mutation must be detectable
- audit output must preserve reference-detail identity

