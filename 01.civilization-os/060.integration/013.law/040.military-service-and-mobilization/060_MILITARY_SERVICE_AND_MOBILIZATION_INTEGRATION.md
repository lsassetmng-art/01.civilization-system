# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for military service and mobilization.

# 2. INTEGRATION SCOPE

- service rules to obligation and defense consumers
- mobilization orders to execution/runtime systems
- mobilization audit to operations

# 3. INTEGRATION RULES

- order scope and obligation identity must be explicit before handoff
- mobilization status must preserve order identity
- hidden mobilization without order must not cross boundary
- invalid obligation binding must fail closed

