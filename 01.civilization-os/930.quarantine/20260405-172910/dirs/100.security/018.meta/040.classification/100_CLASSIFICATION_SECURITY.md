# ============================================================
# CLASSIFICATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for classification structures.

# 2. SECURITY SCOPE

- classification integrity
- target/rule authorization
- active/revised state integrity
- classification audit protection

# 3. SECURITY RULES

- classification scope, target references, and rules must be tamper-evident
- target and rule changes require explicit authorization
- hidden classification mutation must be detectable
- audit output must preserve classification identity

