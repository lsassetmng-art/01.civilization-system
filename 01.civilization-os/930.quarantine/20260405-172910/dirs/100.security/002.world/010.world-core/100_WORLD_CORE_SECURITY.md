# ============================================================
# WORLD CORE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for world core structures.

# 2. SECURITY SCOPE

- world-definition integrity
- scope/version authorization
- active/suspended state integrity
- world-core audit protection

# 3. SECURITY RULES

- world scope, binding, and version must be tamper-evident
- scope and version changes require explicit authorization
- hidden world-core mutation must be detectable
- audit output must preserve world identity

