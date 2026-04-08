# ============================================================
# STATE MACHINE DETAIL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for detailed runtime state machines.

# 2. SECURITY SCOPE

- machine/state integrity
- transition-rule authorization
- guard integrity
- transition audit protection

# 3. SECURITY RULES

- transition rules and guards must be tamper-evident
- privileged transition changes require explicit authorization
- hidden transition paths must be detectable
- transition audit must preserve machine identity

