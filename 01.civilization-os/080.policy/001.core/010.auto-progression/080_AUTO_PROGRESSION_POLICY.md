# ============================================================
# AUTO PROGRESSION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for automatic progression.

# 2. POLICY RULES

- automatic progression requires explicit enablement
- unattended batch catchup requires stronger authorization than normal progression
- pause / resume authority must be explicitly scoped
- abnormal stop reason must be preserved and reviewable

# 3. FAILURE RULE

- unsafe progression state must reject
- ambiguous resume authority must reject
- missing stop reason on abnormal halt must reject

