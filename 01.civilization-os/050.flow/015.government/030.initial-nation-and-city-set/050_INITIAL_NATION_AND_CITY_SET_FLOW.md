# ============================================================
# INITIAL NATION AND CITY SET
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for initial nation and city set publication.

# 2. TRIGGER

- world initialization
- initial-set regeneration request
- initial-set publication review

# 3. MAIN FLOW

1. create or resolve initial_nation_set
2. create nation-linked initial_city_set records
3. create initial_assignment set
4. validate completeness and identity consistency
5. persist initial_set_status
6. emit audit trace

# 4. FAILURE FLOW

- incomplete city assignment -> reject
- invalid nation/city identity binding -> reject
- ambiguous set publication state -> fail closed

# 5. OUTPUT

- initial set state
- assignment state
- publication state

