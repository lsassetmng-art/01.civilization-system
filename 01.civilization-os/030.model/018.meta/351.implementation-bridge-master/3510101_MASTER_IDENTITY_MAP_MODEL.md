# ============================================================
# MASTER IDENTITY MAP MODEL
# ============================================================

status: canonical
layer: model
scope: implementation-bridge-master
component: master-identity-map

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical identity mapping
for all implementation-facing master objects.


# ============================================================
# 2. REQUIRED IDENTITY FIELDS
# ============================================================

identity_fields:
- master_object_id
- master_object_type
- canonical_source_model_id
- canonical_source_scope
- domain_family
- implementation_family
- lookup_key
- display_name_key
- status
- deprecation_state


# ============================================================
# 3. MASTER OBJECT TYPES
# ============================================================

master_object_types:
- nation_master_ref
- builder_ref
- event_ref
- event_modifier_ref
- ui_slot_ref
- job_ref
- permission_ref
- validation_ref
- fallback_ref
- history_ref
- ai_assist_ref


# ============================================================
# 4. FINAL RULE
# ============================================================

Every bridge-referenced object
must have one stable canonical identity.
