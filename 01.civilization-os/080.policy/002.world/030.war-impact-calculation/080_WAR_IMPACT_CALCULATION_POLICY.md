# ============================================================
# WAR IMPACT CALCULATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for war impact calculation.

# 2. POLICY RULES

- active war scope must be explicit
- impact target scope must be validated before publication
- recovery state must preserve conflict scope
- unresolved conflict ambiguity is prohibited

# 3. FAILURE RULE

- missing active war state must reject
- inconsistent target scope must reject
- invalid recovery binding must reject

