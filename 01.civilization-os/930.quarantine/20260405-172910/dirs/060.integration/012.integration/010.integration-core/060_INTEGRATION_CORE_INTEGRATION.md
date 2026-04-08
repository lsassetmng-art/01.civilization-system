# ============================================================
# INTEGRATION CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for integration core structures.

# 2. INTEGRATION SCOPE

- integration definition to ingress/egress/sync consumers
- endpoints and contracts to runtime/publication consumers
- integration-core audit to operations

# 3. INTEGRATION RULES

- integration scope, endpoint set, and contract set must be explicit before handoff
- active integration handoff must preserve integration identity and contract version
- hidden integration-core mutation must not cross boundary
- ambiguous integration-core state must fail closed

