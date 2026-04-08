# ============================================================
# APPROVAL AND BLOCKING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for approval and blocking.

# 2. SECURITY SCOPE

- request/decision integrity
- block-rule authorization
- block-record integrity
- approval/block audit protection

# 3. SECURITY RULES

- approval and block decisions must be tamper-evident
- hidden block creation must be detectable
- unblock requires explicit authorized decision path
- audit output must preserve request and rule identity

