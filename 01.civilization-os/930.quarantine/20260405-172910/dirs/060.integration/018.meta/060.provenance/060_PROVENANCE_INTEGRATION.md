# ============================================================
# PROVENANCE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for provenance structures.

# 2. INTEGRATION SCOPE

- provenance records to audit and compliance consumers
- actor references and provenance rules to runtime consumers
- provenance audit to operations

# 3. INTEGRATION RULES

- provenance scope, actor references, and rules must be explicit before handoff
- blocked provenance state must preserve blocking reason
- hidden provenance mutation must not cross boundary
- ambiguous provenance state must fail closed

