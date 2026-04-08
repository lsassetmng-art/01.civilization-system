# ============================================================
# SYNC BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for sync bindings.

# 2. SECURITY SCOPE

- sync-binding integrity
- target/rule authorization
- active/blocked state integrity
- sync-binding audit protection

# 3. SECURITY RULES

- sync scope, target set, and rule set must be tamper-evident
- target and rule changes require explicit authorization
- hidden sync mutation must be detectable
- audit output must preserve sync identity

