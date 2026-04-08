# ============================================================
# RECONCILIATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for reconciliation structures.

# 2. SECURITY SCOPE

- reconciliation-job integrity
- item/difference authorization
- active/resolved state integrity
- reconciliation audit protection

# 3. SECURITY RULES

- reconciliation scope, items, and differences must be tamper-evident
- item and difference changes require explicit authorization
- hidden reconciliation mutation must be detectable
- audit output must preserve reconciliation identity

