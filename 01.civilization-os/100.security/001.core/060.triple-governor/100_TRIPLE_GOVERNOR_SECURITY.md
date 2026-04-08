# ============================================================
# TRIPLE GOVERNOR
# SECURITY
# ============================================================

status: draft
layer: security
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for Triple governor activity.

# 2. SECURITY SCOPE

- authority mode protection
- adjustment channel authorization
- reason trace integrity
- prohibited hidden mutation detection

# 3. SECURITY RULES

- privileged governor channels require explicit authorization
- reason trace must be tamper-evident
- hidden direct mutation must be detectable
- rejected adjustment evidence must be preserved

