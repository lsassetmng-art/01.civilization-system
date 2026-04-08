# ============================================================
# 090 TAX AND SETTLEMENT
# SECURITY
# ============================================================

status: draft
layer: security
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the security receiver for 090 TAX AND SETTLEMENT.

# 2. SECURITY SCOPE

- access control
- authority boundary
- sensitive mutation control
- audit and rejection rule

# 3. SECURITY RULES

- explicit authorization required
- fail closed on ambiguity
- reject unauthorized mutation
- record security-relevant decision points
