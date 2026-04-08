# ============================================================
# COMPANY BUILDER
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for company builder systems.

# 2. POLICY RULES

- company publication requires explicit validation
- ownership scope and ratio must be explicit
- one active builder session per company and builder scope
- implicit company publication is prohibited

# 3. FAILURE RULE

- missing owner scope must reject
- ownership ratio inconsistency must reject
- ambiguous builder session must reject

