# ============================================================
# META CORE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for meta core structures.

# 2. SECURITY SCOPE

- meta-definition integrity
- scope/version authorization
- active/suspended state integrity
- meta-core audit protection

# 3. SECURITY RULES

- meta scope, scope binding, and version must be tamper-evident
- scope and version changes require explicit authorization
- hidden meta-core mutation must be detectable
- audit output must preserve meta identity

