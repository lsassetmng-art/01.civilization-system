# ============================================================
# MODE RULE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for mode rule handling.

# 2. TRIGGER

- rule-set creation/update
- rule item update
- rule condition update
- rule revision request

# 3. MAIN FLOW

1. create or resolve mode_rule_set
2. bind mode_rule_item set
3. bind mode_rule_condition set
4. validate rule scope and rule consistency
5. persist mode_rule_status
6. emit audit trace

# 4. FAILURE FLOW

- missing rule scope -> reject
- invalid item or condition binding -> reject
- hidden mode-rule mutation -> fail closed

# 5. OUTPUT

- rule-set state
- item/condition state
- audit record

