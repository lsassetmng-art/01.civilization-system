# ============================================================
# NATION BUILDER
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for nation builder systems.

# 2. INTEGRATION SCOPE

- builder session to policy-bundle validation
- validated nation state to publication/runtime consumers
- nation builder audit to operations

# 3. INTEGRATION RULES

- policy bundles must be explicit before publication handoff
- failed validation must not cross publication boundary
- nation publication must preserve builder session and version identity
- ambiguous builder state must fail closed

