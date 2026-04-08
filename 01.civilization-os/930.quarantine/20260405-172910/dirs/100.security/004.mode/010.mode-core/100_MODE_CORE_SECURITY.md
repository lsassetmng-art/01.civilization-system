# ============================================================
# MODE CORE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for mode core structures.

# 2. SECURITY SCOPE

- mode-definition integrity
- scope/version authorization
- active/suspended state integrity
- mode-core audit protection

# 3. SECURITY RULES

- mode scope, binding, and version must be tamper-evident
- scope and version changes require explicit authorization
- hidden mode-core mutation must be detectable
- audit output must preserve mode identity

