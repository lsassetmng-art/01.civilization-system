# ============================================================
# COMPANY BUILDER
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for company builder systems.

# 2. INTEGRATION SCOPE

- builder session to ownership validation
- validated company state to runtime/market consumers
- company builder audit to operations

# 3. INTEGRATION RULES

- ownership state must be explicit before publication handoff
- failed validation must not cross publication boundary
- company publication must preserve company identity and builder session
- ambiguous builder or ownership state must fail closed

