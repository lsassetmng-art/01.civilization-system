# ============================================================
# DETAIL CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for detail core structures.

# 2. INTEGRATION SCOPE

- detail definition to attribute/constraint/reference consumers
- scope bindings and versions to runtime/publication consumers
- detail-core audit to operations

# 3. INTEGRATION RULES

- detail scope, scope binding, and version must be explicit before handoff
- active detail handoff must preserve detail identity and version
- hidden detail-core mutation must not cross boundary
- ambiguous detail-core state must fail closed

