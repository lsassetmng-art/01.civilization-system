# ============================================================
# ELECTION AND POWER ACQUISITION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for elections and power acquisition.

# 2. POLICY RULES

- candidate eligibility must be explicit before registration approval
- vote result must finalize before power transfer
- transfer must preserve from/to authority identity
- hidden power transfer is prohibited

# 3. FAILURE RULE

- invalid candidate registration must reject
- ambiguous vote result must reject
- hidden power transfer without record must reject

