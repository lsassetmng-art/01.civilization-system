# ============================================================
# REFERENCE DETAIL
# FLOW
# ============================================================

status: draft
layer: flow
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for reference detail handling.

# 2. TRIGGER

- reference detail create/update
- reference target update
- reference rule update
- detail revision request

# 3. MAIN FLOW

1. create or resolve reference_detail_record
2. bind reference_target set
3. bind reference_rule set
4. validate reference scope and target/rule consistency
5. persist reference_status
6. emit audit trace

# 4. FAILURE FLOW

- missing reference scope -> reject
- invalid target or rule binding -> reject
- hidden reference-detail mutation -> fail closed

# 5. OUTPUT

- reference detail state
- target/rule/status
- audit record

