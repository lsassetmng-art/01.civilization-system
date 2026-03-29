# ============================================================
# SERVICE ENTRY PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-routing
component: service-entry-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PERMISSION STATES
# ============================================================

permission_states:
- full_use_allowed
- overview_only
- browse_only
- purchase_blocked
- institution_only
- restricted_by_nation
- restricted_by_role
- restricted_by_owner
- inactive_service


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

permission_fields:
- object_id
- service_type
- user_context
- permission_state
- restriction_reason
- overview_allowed
- manage_allowed
- builder_allowed
- redirect_target_if_blocked


# ============================================================
# 3. FINAL RULE
# ============================================================

The system must distinguish
between blocked use,
blocked purchase,
blocked management,
and blocked editing.
