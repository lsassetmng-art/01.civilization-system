# ============================================================
# NATION DETAIL SET
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for nation detail sets.

# 2. POLICY RULES

- required detail bundles must be explicit before publication
- nation identity and version must be explicit
- incomplete detail publication is prohibited
- ambiguous completeness/publication state is prohibited

# 3. FAILURE RULE

- missing required detail bundle must reject
- invalid nation binding must reject
- ambiguous completeness/publication state must reject

