# ============================================================
# GOVERNANCE DETAIL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for governance details.

# 2. SECURITY SCOPE

- policy/channel/matrix integrity
- governance-action authorization
- state-transition integrity
- governance audit protection

# 3. SECURITY RULES

- channel and matrix changes require explicit authorization
- governance-action transitions must be attributable
- hidden governance mutation must be detectable
- audit output must preserve government identity

