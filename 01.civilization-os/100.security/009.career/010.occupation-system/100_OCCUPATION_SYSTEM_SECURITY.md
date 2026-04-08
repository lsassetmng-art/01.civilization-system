# ============================================================
# OCCUPATION SYSTEM
# SECURITY
# ============================================================

status: draft
layer: security
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for occupation system structures.

# 2. SECURITY SCOPE

- occupation-definition integrity
- family/rule authorization
- active-state integrity
- occupation audit protection

# 3. SECURITY RULES

- occupation scope, family identity, and rule set must be tamper-evident
- family and rule changes require explicit authorization
- hidden occupation mutation must be detectable
- audit output must preserve occupation identity

