# ============================================================
# META CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for meta core structures.

# 2. INTEGRATION SCOPE

- meta definition to annotation/tagging/classification consumers
- scope bindings and versions to runtime/publication consumers
- meta-core audit to operations

# 3. INTEGRATION RULES

- meta scope, scope binding, and version must be explicit before handoff
- active meta handoff must preserve meta identity and version
- hidden meta-core mutation must not cross boundary
- ambiguous meta-core state must fail closed

