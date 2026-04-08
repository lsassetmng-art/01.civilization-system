# ============================================================
# INTERVIEW
# SECURITY
# ============================================================

status: draft
layer: security
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for interview structures.

# 2. SECURITY SCOPE

- session/stage integrity
- participant authorization
- result integrity
- interview audit protection

# 3. SECURITY RULES

- session scope, stage identity, and participant identity must be tamper-evident
- stage and participant changes require explicit authorization
- hidden interview-result mutation must be detectable
- audit output must preserve interview-session identity

