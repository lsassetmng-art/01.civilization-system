# ============================================================
# 030 PLAYER PERMISSION BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 006.player
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the security receiver for 030 PLAYER PERMISSION BINDING.

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
