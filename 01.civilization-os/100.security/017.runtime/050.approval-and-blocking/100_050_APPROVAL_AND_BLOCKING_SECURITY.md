# ============================================================
# 050 APPROVAL AND BLOCKING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the security receiver for 050 APPROVAL AND BLOCKING.

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
