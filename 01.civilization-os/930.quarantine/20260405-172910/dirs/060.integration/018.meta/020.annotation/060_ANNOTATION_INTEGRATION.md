# ============================================================
# ANNOTATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for annotation structures.

# 2. INTEGRATION SCOPE

- annotations to display and interpretation consumers
- target references and rules to runtime and validation consumers
- annotation audit to operations

# 3. INTEGRATION RULES

- annotation scope, target references, and rules must be explicit before handoff
- revised annotation handoff must preserve annotation identity
- hidden annotation mutation must not cross boundary
- ambiguous annotation state must fail closed

