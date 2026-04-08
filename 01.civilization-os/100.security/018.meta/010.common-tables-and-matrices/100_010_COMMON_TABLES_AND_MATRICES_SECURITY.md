# ============================================================
# 010 COMMON TABLES AND MATRICES
# SECURITY
# ============================================================

status: draft
layer: security
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the security receiver for 010 COMMON TABLES AND MATRICES.

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
