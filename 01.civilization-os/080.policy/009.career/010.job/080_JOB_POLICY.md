# ============================================================
# JOB
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for job structures.

# 2. POLICY RULES

- employer scope, posting scope, and requirement set must be explicit
- active and suspended job state must be explicit
- hidden job mutation is prohibited
- implicit posting without validated job definition is prohibited

# 3. FAILURE RULE

- missing employer or posting scope must reject
- invalid requirement binding must reject
- hidden job mutation must reject

