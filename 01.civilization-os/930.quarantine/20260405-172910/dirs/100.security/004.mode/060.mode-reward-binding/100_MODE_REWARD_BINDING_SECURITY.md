# ============================================================
# MODE REWARD BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for mode reward bindings.

# 2. SECURITY SCOPE

- reward-binding integrity
- reference/rule authorization
- active/blocked state integrity
- mode-reward-binding audit protection

# 3. SECURITY RULES

- reward scope, references, and rules must be tamper-evident
- reference and rule changes require explicit authorization
- hidden reward-binding mutation must be detectable
- audit output must preserve reward-binding identity

