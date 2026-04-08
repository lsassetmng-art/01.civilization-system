# ============================================================
# EVALUATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for career evaluation structures.

# 2. SECURITY SCOPE

- evaluation-definition integrity
- metric/session authorization
- result integrity
- evaluation audit protection

# 3. SECURITY RULES

- evaluation scope, subject identity, and metric set must be tamper-evident
- session and metric changes require explicit authorization
- hidden evaluation-result mutation must be detectable
- audit output must preserve evaluation-session identity

