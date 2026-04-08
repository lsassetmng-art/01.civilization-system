# ============================================================
# MAPPING RULE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for mapping rules.

# 2. RUNTIME STATE

- active mapping-rule-set state
- field-rule resolution state
- transform-rule resolution state
- active/revised mapping state

# 3. EXECUTION RULES

- mapping scope, field rules, and transform rules must resolve before publication
- revised mapping state must preserve mapping identity
- active and revised states must be explicit
- hidden mapping mutation is prohibited

# 4. FAILURE HANDLING

- missing mapping scope -> reject
- invalid field or transform binding -> reject
- hidden mapping mutation -> fail closed

