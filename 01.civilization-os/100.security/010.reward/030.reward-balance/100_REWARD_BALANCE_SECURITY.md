# ============================================================
# REWARD BALANCE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for reward balances.

# 2. SECURITY SCOPE

- account integrity
- lock-state authorization
- entry/snapshot integrity
- balance audit protection

# 3. SECURITY RULES

- lock-state changes require explicit authorization
- entry and snapshot records must be tamper-evident
- locked-account misuse must be detectable
- balance history must preserve account identity

