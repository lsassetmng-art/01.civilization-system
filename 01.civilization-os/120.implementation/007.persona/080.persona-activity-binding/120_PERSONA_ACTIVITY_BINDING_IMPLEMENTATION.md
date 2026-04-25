# ============================================================
# PERSONA ACTIVITY BINDING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for Civilization-side persona activity bindings.

# 2. IMPLEMENTATION TARGETS

- activity-binding handling
- reference/rule handling
- binding-status handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- persona_activity_binding
- activity_reference
- activity_rule
- activity_binding_status

# 4. EXECUTION

- resolve explicit persona scope and activity scope
- bind references and rules before publication
- publish only explicit active or blocked state
- reject hidden activity-binding mutation path

# 5. VALIDATION

- reject missing persona or activity scope
- reject invalid reference or rule binding
- reject hidden activity-binding mutation

# 6. OBSERVABILITY

- activity-binding audit
- reference/rule visibility
- binding-status visibility

