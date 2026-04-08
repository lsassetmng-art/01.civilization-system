# ============================================================
# LINEAGE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for lineage handling.

# 2. TRIGGER

- lineage create/update
- source reference update
- lineage rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve lineage_record
2. bind lineage_source_reference set
3. bind lineage_rule set
4. validate lineage scope and source/rule consistency
5. persist lineage_status
6. emit audit trace

# 4. FAILURE FLOW

- missing lineage scope -> reject
- invalid source or rule binding -> reject
- hidden lineage mutation -> fail closed

# 5. OUTPUT

- lineage state
- source/rule/status
- audit record

