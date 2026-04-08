# ============================================================
# PERSONA BEHAVIOR BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona behavior binding.

# 2. INTEGRATION SCOPE

- behavior profile to runtime behavior execution
- context binding to interaction systems
- rule activation to observable behavior consumers
- binding audit to operations

# 3. INTEGRATION RULES

- active profile and context must be explicit before binding handoff
- rule handoff must preserve profile version
- conflicting binding state must not cross boundary
- rejected binding must preserve reason state

