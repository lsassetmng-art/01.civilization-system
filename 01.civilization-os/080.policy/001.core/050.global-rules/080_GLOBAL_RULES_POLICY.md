# ============================================================
# GLOBAL RULES
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for global rule precedence.

# 2. POLICY RULES

- global rules take precedence over local behavior unless explicit exception exists
- only one effective active version is allowed per rule and window
- exception requires explicit approval provenance
- ambiguous precedence is prohibited

# 3. FAILURE RULE

- conflicting active versions must reject
- unauthorized exception must reject
- ambiguous precedence must reject

