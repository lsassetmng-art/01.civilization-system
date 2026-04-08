# ============================================================
# REINCARNATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona reincarnation.

# 2. POLICY RULES

- source and target persona must be explicit
- continuity trace is mandatory
- hidden reincarnation without record is prohibited
- lifecycle boundary must validate before activation

# 3. FAILURE RULE

- missing source/target persona must reject
- ambiguous continuity binding must reject
- hidden transition must reject

