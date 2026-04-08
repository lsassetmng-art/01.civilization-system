# ============================================================
# EPIDEMIC CALCULATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for epidemic calculation.

# 2. SECURITY SCOPE

- epidemic profile integrity
- infection-state provenance
- wave publication authorization
- epidemic audit protection

# 3. SECURITY RULES

- spread profile source must be trusted
- infection and wave records must remain attributable
- impact publication must preserve wave identity
- ambiguous epidemic scope must reject

