# ============================================================
# MODE RULE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for mode rules.

# 2. INTEGRATION SCOPE

- mode rules to runtime and validation consumers
- rule items and conditions to transition/session/reward consumers
- mode-rule audit to operations

# 3. INTEGRATION RULES

- rule scope, items, and conditions must be explicit before handoff
- revised rule handoff must preserve rule-set identity and version context
- hidden mode-rule mutation must not cross boundary
- ambiguous rule state must fail closed

