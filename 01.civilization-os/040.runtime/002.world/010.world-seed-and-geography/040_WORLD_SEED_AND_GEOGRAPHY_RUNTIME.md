# ============================================================
# WORLD SEED AND GEOGRAPHY
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime behavior for seed and geography resolution.

# 2. RUNTIME STATE

- active world seed version
- geography build state
- zone validation state
- feature attachment state

# 3. EXECUTION RULES

- one explicit seed version per build cycle
- continent and zone validation must complete before feature attachment
- geography output must be attributable to seed version
- regeneration without explicit trigger is prohibited

# 4. FAILURE HANDLING

- missing seed version -> reject
- invalid zone hierarchy -> reject
- ambiguous feature attachment -> fail closed

