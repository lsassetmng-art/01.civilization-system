# ============================================================
# FISCAL AND TREATY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for fiscal plans and treaties.

# 2. TRIGGER

- fiscal plan creation/update
- treaty signing/ratification
- fiscal/treaty review cycle

# 3. MAIN FLOW

1. create or resolve fiscal_plan
2. bind fiscal_commitment set
3. create or resolve treaty_record
4. bind treaty_party_state set
5. validate fiscal/treaty scope and status
6. emit audit trace

# 4. FAILURE FLOW

- invalid fiscal scope -> reject
- missing treaty party state -> reject
- hidden treaty mutation -> fail closed

# 5. OUTPUT

- fiscal state
- treaty/party state
- audit record

