# ============================================================
# MODE CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for mode core structures.

# 2. INTEGRATION SCOPE

- mode definition to rule/transition/session consumers
- scope bindings and versions to runtime/publication consumers
- mode-core audit to operations

# 3. INTEGRATION RULES

- mode scope, scope binding, and version must be explicit before handoff
- active mode handoff must preserve mode identity and version
- hidden mode-core mutation must not cross boundary
- ambiguous mode-core state must fail closed

