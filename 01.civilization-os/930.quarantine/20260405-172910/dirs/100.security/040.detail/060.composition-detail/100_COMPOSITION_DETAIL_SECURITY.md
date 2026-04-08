# ============================================================
# COMPOSITION DETAIL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for composition detail structures.

# 2. SECURITY SCOPE

- composition-detail integrity
- item/rule authorization
- active/revised state integrity
- composition-detail audit protection

# 3. SECURITY RULES

- composition scope, items, and rules must be tamper-evident
- item and rule changes require explicit authorization
- hidden composition-detail mutation must be detectable
- audit output must preserve composition-detail identity

