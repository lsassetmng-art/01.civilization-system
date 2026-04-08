# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for Aerial runtime intervention.

# 2. SECURITY SCOPE

- assistive-context integrity
- assistive-action authorization
- escalation integrity
- intervention audit protection

# 3. SECURITY RULES

- assistive and escalation changes require explicit authorization
- hidden direct control through assistive path must be detectable
- escalation scope and reason must be tamper-evident
- audit output must preserve assistive identity

