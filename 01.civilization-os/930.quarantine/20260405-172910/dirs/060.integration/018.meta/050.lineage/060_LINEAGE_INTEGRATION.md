# ============================================================
# LINEAGE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for lineage structures.

# 2. INTEGRATION SCOPE

- lineage records to provenance and audit consumers
- source references and lineage rules to runtime consumers
- lineage audit to operations

# 3. INTEGRATION RULES

- lineage scope, source references, and rules must be explicit before handoff
- blocked lineage state must preserve blocking reason
- hidden lineage mutation must not cross boundary
- ambiguous lineage state must fail closed

