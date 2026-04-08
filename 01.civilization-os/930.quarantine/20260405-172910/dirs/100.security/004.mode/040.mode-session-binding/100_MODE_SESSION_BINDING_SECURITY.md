# ============================================================
# MODE SESSION BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for mode session bindings.

# 2. SECURITY SCOPE

- session-binding integrity
- reference/constraint authorization
- active/blocked state integrity
- mode-session-binding audit protection

# 3. SECURITY RULES

- mode scope, session scope, and constraints must be tamper-evident
- reference and constraint changes require explicit authorization
- hidden session-binding mutation must be detectable
- audit output must preserve session-binding identity

