# ============================================================
# REWARD DISTRIBUTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for reward distribution.

# 2. TRIGGER

- distribution execution request
- campaign distribution cycle
- retry for failed target

# 3. MAIN FLOW

1. resolve reward_distribution_record
2. enumerate reward_distribution_target set
3. apply reward to each target
4. persist reward_distribution_result or failure
5. finalize distribution status
6. emit audit trace

# 4. FAILURE FLOW

- missing target scope -> reject target
- partial silent distribution -> reject batch
- ambiguous batch status -> fail closed

# 5. OUTPUT

- distribution result state
- failure state where applicable
- audit record

