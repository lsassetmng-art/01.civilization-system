# ============================================================
# DISASTER CALCULATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for disaster calculation.

# 2. INTEGRATION SCOPE

- disaster profile to runtime evaluator
- regional risk state to occurrence trigger
- occurrence to impact publication
- impact records to population/economy/governance effects

# 3. INTEGRATION RULES

- risk state must preserve region and disaster type
- occurrence handoff requires explicit severity source
- impact publication must follow occurrence persistence
- invalid risk scope must not cross boundary

