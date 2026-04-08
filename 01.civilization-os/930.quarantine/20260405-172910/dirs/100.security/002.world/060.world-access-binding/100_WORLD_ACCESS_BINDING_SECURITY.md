# ============================================================
# WORLD ACCESS BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for world access bindings.

# 2. SECURITY SCOPE

- access-binding integrity
- subject/rule authorization
- active/blocked state integrity
- world-access-binding audit protection

# 3. SECURITY RULES

- world scope, subject scope, and rules must be tamper-evident
- subject and rule changes require explicit authorization
- hidden access-binding mutation must be detectable
- audit output must preserve access-binding identity

