# ============================================================
# INFRASTRUCTURE PLACEMENT
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for infrastructure placement.

# 2. SECURITY SCOPE

- placement authorization
- coordinate integrity
- violation evidence protection
- placement audit protection

# 3. SECURITY RULES

- privileged placement requires explicit authorization
- coordinate and region identity must be tamper-evident
- violation evidence must persist before rejection
- ambiguous coordinate scope must reject

