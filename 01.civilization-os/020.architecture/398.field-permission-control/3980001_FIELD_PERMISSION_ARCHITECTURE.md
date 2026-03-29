# ============================================================
# FIELD PERMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-permission-control
component: field-permission-control

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical permission architecture
for Field Map, Nation control surfaces,
facility operations,
and infrastructure placement inside Civilization.

This architecture defines:

- actor classes
- action permissions
- target permissions
- authority scopes
- UI visibility behavior
- restricted and approval-required operations


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Permission control must separate:

- who the actor is
- what action is being requested
- what object is targeted
- what authority scope applies
- whether approval is required
- how the UI should behave

No action with nation, public, military,
or infrastructure impact
may rely on implicit trust.


# ============================================================
# 3. PERMISSION LAYERS
# ============================================================

permission_layers:
- actor_permission_layer
- action_permission_layer
- target_permission_layer
- authority_scope_layer
- ui_visibility_layer


# ============================================================
# 4. FINAL RULE
# ============================================================

Permission must be evaluated
before use, build, edit, replace,
remove, or manage actions are executed.
