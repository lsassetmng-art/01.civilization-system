# ============================================================
# INITIAL NATION AND CITY SET
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for initial nation and city sets.

# 2. POLICY RULES

- initial set publication requires complete nation/city assignment
- nation and city identity binding must be explicit
- partial initial-set publication is prohibited
- ambiguous set publication state is prohibited

# 3. FAILURE RULE

- incomplete city assignment must reject
- invalid identity binding must reject
- ambiguous set publication state must reject

