# ============================================================
# LICENSE AND BOUNDARY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona license and boundary control.

# 2. POLICY RULES

- license validity window must be explicit
- access or transfer requires explicit grant/rule
- boundary crossing without rule is prohibited
- ambiguous license validity is prohibited

# 3. FAILURE RULE

- missing valid license must reject
- missing grant/rule must reject
- ambiguous validity window must reject

