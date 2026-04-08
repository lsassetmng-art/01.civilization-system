# ============================================================
# FAMINE AND SHORTAGE CALCULATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for famine and shortage calculation.

# 2. INTEGRATION SCOPE

- food supply state to shortage evaluator
- famine risk to population and event systems
- shortage impacts to economy/governance consumers
- famine audit to operations

# 3. INTEGRATION RULES

- supply state must be region-bound
- threshold source must be explicit
- risk and impact records must preserve region scope
- ambiguous shortage scope must not cross boundary

