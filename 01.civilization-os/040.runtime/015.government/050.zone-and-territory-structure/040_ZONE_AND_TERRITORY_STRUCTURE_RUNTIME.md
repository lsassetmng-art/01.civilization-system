# ============================================================
# ZONE AND TERRITORY STRUCTURE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for zone and territory structures.

# 2. RUNTIME STATE

- active territory resolution state
- zone-definition validation state
- boundary/dispute state
- territorial-status publication state

# 3. EXECUTION RULES

- territory hierarchy must validate before zone publication
- boundary identity must be explicit before dispute evaluation
- territorial-status publication requires resolved governance/dispute state
- unresolved territorial ambiguity is prohibited

# 4. FAILURE HANDLING

- invalid territory hierarchy -> reject
- missing boundary identity -> reject
- unresolved territorial ambiguity -> fail closed

