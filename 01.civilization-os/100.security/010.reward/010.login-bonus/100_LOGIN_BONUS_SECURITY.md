# ============================================================
# LOGIN BONUS
# SECURITY
# ============================================================

status: draft
layer: security
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for login bonus systems.

# 2. SECURITY SCOPE

- campaign integrity
- claim-state integrity
- reset-rule authorization
- login-bonus audit protection

# 3. SECURITY RULES

- campaign source must be attributable
- duplicate claim misuse must be detectable
- reset execution requires explicit authorization
- claim audit must preserve subject identity

