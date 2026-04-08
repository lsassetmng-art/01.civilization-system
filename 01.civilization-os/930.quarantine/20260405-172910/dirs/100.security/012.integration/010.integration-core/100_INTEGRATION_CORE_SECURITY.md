# ============================================================
# INTEGRATION CORE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for integration core structures.

# 2. SECURITY SCOPE

- integration-definition integrity
- endpoint/contract authorization
- active/suspended state integrity
- integration-core audit protection

# 3. SECURITY RULES

- integration scope, endpoint set, and contract set must be tamper-evident
- endpoint and contract changes require explicit authorization
- hidden integration-core mutation must be detectable
- audit output must preserve integration identity

