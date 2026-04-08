# ============================================================
# DISPUTE RESOLUTION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for dispute resolution.

# 2. POLICY RULES

- dispute scope, party identity, and procedure stage must be explicit
- decision state must exist before case closure
- hidden case closure without decision state is prohibited
- implicit procedure skip is prohibited

# 3. FAILURE RULE

- missing dispute scope must reject
- invalid party/procedure binding must reject
- hidden case closure without decision state must reject

