# ============================================================
# 020 PLAYER ACTION SCOPE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the security receiver for 020 PLAYER ACTION SCOPE.

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
