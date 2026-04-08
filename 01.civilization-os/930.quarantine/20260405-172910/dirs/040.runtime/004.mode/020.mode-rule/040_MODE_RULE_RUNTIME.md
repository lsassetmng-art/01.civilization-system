# ============================================================
# MODE RULE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for mode rules.

# 2. RUNTIME STATE

- active rule-set state
- rule-item resolution state
- rule-condition resolution state
- active/revised rule state

# 3. EXECUTION RULES

- rule scope, rule items, and conditions must resolve before publication
- revised state must preserve rule-set identity
- active and revised states must be explicit
- hidden mode-rule mutation is prohibited

# 4. FAILURE HANDLING

- missing rule scope -> reject
- invalid item or condition binding -> reject
- hidden mode-rule mutation -> fail closed

