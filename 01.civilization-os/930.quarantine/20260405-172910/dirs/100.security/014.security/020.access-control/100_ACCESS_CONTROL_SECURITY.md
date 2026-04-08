# ============================================================
# ACCESS CONTROL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for access control structures.

# 2. SECURITY SCOPE

- access-control integrity
- subject/rule authorization
- active/blocked state integrity
- access-control audit protection

# 3. SECURITY RULES

- access scope, subject set, and permission rules must be tamper-evident
- subject and permission changes require explicit authorization
- hidden access-control mutation must be detectable
- audit output must preserve access-control identity

