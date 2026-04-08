# ============================================================
# LOGIN BONUS
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for login bonus systems.

# 2. POLICY RULES

- campaign scope and reset rule must be explicit
- same-day duplicate claim is prohibited
- claim progression must remain attributable to one subject
- implicit campaign rollover is prohibited

# 3. FAILURE RULE

- missing active campaign must reject
- duplicate same-day claim must reject
- ambiguous reset state must reject

