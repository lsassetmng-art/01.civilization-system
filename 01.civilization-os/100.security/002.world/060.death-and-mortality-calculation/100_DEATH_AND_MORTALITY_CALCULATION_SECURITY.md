# ============================================================
# DEATH AND MORTALITY CALCULATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for mortality calculation.

# 2. SECURITY SCOPE

- profile integrity
- aggregate integrity
- impact publication authorization
- mortality audit protection

# 3. SECURITY RULES

- mortality profile source must be trusted
- death aggregate must be tamper-evident
- impact publication must preserve region/period identity
- ambiguous severity source must reject

