# ============================================================
# PERMISSION AND LOCK BINDING MAP MODEL
# ============================================================

status: canonical
layer: model
scope: implementation-bridge-master
component: permission-and-lock-binding-map

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical binding
for permissions, editability,
locks, and transition-only edits.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

permission_and_lock_binding_fields:
- target_object_id
- target_family
- visible_permission_ref
- executable_permission_ref
- auto_execution_permission_ref
- structure_lock_ref
- scope_edit_ref
- regime_transition_unlock_ref
- failure_message_template_ref


# ============================================================
# 3. TARGET FAMILIES
# ============================================================

target_families:
- builder_field
- event_choice
- life_event_slot
- work_ui_action
- ai_assist_action
- emergency_override_action


# ============================================================
# 4. FINAL RULE
# ============================================================

Every editable object must define
whether it is visible,
editable,
auto-executable,
locked,
or transition-only.
