# ============================================================
# WORLD TRANSITION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for world transitions.

# 2. SECURITY SCOPE

- transition integrity
- trigger/guard authorization
- active/blocked state integrity
- world-transition audit protection

# 3. SECURITY RULES

- from/to state, triggers, and guards must be tamper-evident
- trigger and guard changes require explicit authorization
- hidden world-transition mutation must be detectable
- audit output must preserve transition identity

