# ============================================================
# MEASUREMENT DETAIL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for measurement detail structures.

# 2. SECURITY SCOPE

- measurement-detail integrity
- item/rule authorization
- active/revised state integrity
- measurement-detail audit protection

# 3. SECURITY RULES

- measurement scope, items, and rules must be tamper-evident
- item and rule changes require explicit authorization
- hidden measurement-detail mutation must be detectable
- audit output must preserve measurement-detail identity

