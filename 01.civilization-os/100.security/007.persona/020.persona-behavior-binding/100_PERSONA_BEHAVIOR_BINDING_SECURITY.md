# ============================================================
# PERSONA BEHAVIOR BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for persona behavior binding.

# 2. SECURITY SCOPE

- profile version integrity
- context-binding authorization
- rule-activation protection
- binding audit protection

# 3. SECURITY RULES

- profile version source must be trusted
- binding requires explicit authorization
- conflicting binding misuse must be detectable
- audit output must preserve actor attribution

