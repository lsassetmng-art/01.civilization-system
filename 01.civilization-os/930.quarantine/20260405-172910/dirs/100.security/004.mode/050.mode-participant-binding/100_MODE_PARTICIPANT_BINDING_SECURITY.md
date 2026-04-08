# ============================================================
# MODE PARTICIPANT BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for mode participant bindings.

# 2. SECURITY SCOPE

- participant-binding integrity
- reference/rule authorization
- active/blocked state integrity
- mode-participant-binding audit protection

# 3. SECURITY RULES

- participant scope, references, and rules must be tamper-evident
- reference and rule changes require explicit authorization
- hidden participant-binding mutation must be detectable
- audit output must preserve participant-binding identity

