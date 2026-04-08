# ============================================================
# DETAIL CORE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for detail core structures.

# 2. SECURITY SCOPE

- detail-definition integrity
- scope/version authorization
- active/suspended state integrity
- detail-core audit protection

# 3. SECURITY RULES

- detail scope, scope binding, and version must be tamper-evident
- scope and version changes require explicit authorization
- hidden detail-core mutation must be detectable
- audit output must preserve detail identity

