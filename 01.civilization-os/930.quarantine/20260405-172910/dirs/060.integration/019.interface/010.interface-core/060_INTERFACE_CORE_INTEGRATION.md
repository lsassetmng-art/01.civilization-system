# ============================================================
# INTERFACE CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for interface core structures.

# 2. INTEGRATION SCOPE

- interface definition to screen/navigation/input consumers
- scope bindings and versions to runtime/publication consumers
- interface-core audit to operations

# 3. INTEGRATION RULES

- interface scope, scope binding, and version must be explicit before handoff
- active interface handoff must preserve interface identity and version
- hidden interface-core mutation must not cross boundary
- ambiguous interface-core state must fail closed

