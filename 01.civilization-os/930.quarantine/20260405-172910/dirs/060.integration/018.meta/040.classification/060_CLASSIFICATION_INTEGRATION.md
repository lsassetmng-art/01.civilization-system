# ============================================================
# CLASSIFICATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for classification structures.

# 2. INTEGRATION SCOPE

- classification records to policy and access consumers
- target references and classification rules to runtime consumers
- classification audit to operations

# 3. INTEGRATION RULES

- classification scope, target references, and rules must be explicit before handoff
- revised classification handoff must preserve classification identity
- hidden classification mutation must not cross boundary
- ambiguous classification state must fail closed

