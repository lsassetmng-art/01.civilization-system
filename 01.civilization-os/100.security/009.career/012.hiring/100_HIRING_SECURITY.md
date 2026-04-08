# ============================================================
# HIRING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for hiring structures.

# 2. SECURITY SCOPE

- hiring-case integrity
- candidate/decision authorization
- hiring-record integrity
- hiring audit protection

# 3. SECURITY RULES

- employer scope, candidate scope, and hiring identity must be tamper-evident
- decision and record changes require explicit authorization
- hidden hiring mutation must be detectable
- audit output must preserve hiring-case identity

