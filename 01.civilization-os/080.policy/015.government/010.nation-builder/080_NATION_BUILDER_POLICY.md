# ============================================================
# NATION BUILDER
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for nation builder systems.

# 2. POLICY RULES

- nation publication requires explicit validation
- required policy bundles must be complete before publication
- one active builder session per nation and builder scope
- implicit publication without validation is prohibited

# 3. FAILURE RULE

- missing required bundle must reject
- validation failure must reject publication
- ambiguous builder session must reject

