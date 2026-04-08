# ============================================================
# INITIAL NATION AND CITY SET
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for initial nation and city sets.

# 2. INTEGRATION SCOPE

- initial set to world bootstrap consumers
- city assignments to territory/runtime consumers
- initial-set audit to operations

# 3. INTEGRATION RULES

- nation and city identities must be explicit before bootstrap handoff
- incomplete initial set must not cross publication boundary
- assignment handoff must preserve world/nation/city identity
- ambiguous set status must fail closed

