# ============================================================
# REWARD DEFINITION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for reward definitions.

# 2. POLICY RULES

- reward code and version must be explicit
- source, condition, and value set must remain attributable
- incompatible condition/value sets are prohibited
- implicit reward-definition mutation is prohibited

# 3. FAILURE RULE

- missing source must reject
- invalid condition/value compatibility must reject
- ambiguous version state must reject

