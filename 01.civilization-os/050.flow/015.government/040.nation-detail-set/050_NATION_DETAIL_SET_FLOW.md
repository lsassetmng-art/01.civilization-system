# ============================================================
# NATION DETAIL SET
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for nation detail sets.

# 2. TRIGGER

- detail-profile update
- institutional/administrative bundle update
- detail publication request

# 3. MAIN FLOW

1. resolve nation_detail_profile
2. bind administrative_bundle set
3. bind institutional_bundle set
4. validate completeness and consistency
5. persist nation_detail_status
6. emit audit trace

# 4. FAILURE FLOW

- missing required detail bundle -> reject
- invalid nation identity binding -> reject
- ambiguous publication/completeness state -> fail closed

# 5. OUTPUT

- detail profile state
- bundle state
- publication state

