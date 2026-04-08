# ============================================================
# SECURITY CORE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for security core structures.

# 2. SECURITY SCOPE

- security-definition integrity
- scope/version authorization
- active/suspended state integrity
- security-core audit protection

# 3. SECURITY RULES

- security scope, scope binding, and version must be tamper-evident
- scope and version changes require explicit authorization
- hidden security-core mutation must be detectable
- audit output must preserve security identity

