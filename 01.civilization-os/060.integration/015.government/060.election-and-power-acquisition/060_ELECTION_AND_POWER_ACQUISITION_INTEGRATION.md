# ============================================================
# ELECTION AND POWER ACQUISITION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for elections and power acquisition.

# 2. INTEGRATION SCOPE

- election state to voter/result consumers
- candidate state to law/eligibility consumers
- power transfer to authority/government core consumers
- election audit to operations

# 3. INTEGRATION RULES

- vote result must finalize before power transfer handoff
- transfer handoff must preserve from/to authority identity
- invalid registration or ambiguous result must not cross boundary
- hidden power transfer must fail closed

