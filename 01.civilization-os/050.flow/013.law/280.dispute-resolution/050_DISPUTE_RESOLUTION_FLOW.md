# ============================================================
# DISPUTE RESOLUTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for dispute resolution.

# 2. TRIGGER

- dispute case opening
- procedure stage update
- dispute decision issuance

# 3. MAIN FLOW

1. create or resolve dispute_case
2. bind dispute_party set
3. bind dispute_procedure state
4. evaluate case progression
5. persist dispute_decision where applicable
6. emit audit trace

# 4. FAILURE FLOW

- missing dispute scope -> reject
- invalid party/procedure binding -> reject
- hidden case closure without decision state -> fail closed

# 5. OUTPUT

- dispute case state
- procedure/decision state
- audit record

