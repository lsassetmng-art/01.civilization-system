# ============================================================
# MINISTRY AND ADMINISTRATIVE STRUCTURE MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: ministry-and-administrative-structure

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BASE MINISTRY TYPES
# ============================================================

base_ministry_types:
- interior
- finance
- justice
- defense
- education
- industry
- transport
- health
- agriculture
- trade
- religion
- public_works
- local_governance
- labor
- emergency_management
- intelligence
- reconstruction
- culture


# ============================================================
# 2. MINISTRY FIELDS
# ============================================================

ministry_fields:
- ministry_id
- ministry_name
- ministry_exists
- ministry_scope
- ministry_rank
- ministry_head_office
- ministry_appointment_method
- ministry_removal_method
- ministry_budget_priority
- ministry_autonomy_level
- ministry_coordination_requirement
- ministry_shadow_controller


# ============================================================
# 3. SHADOW CONTROLLER TYPES
# ============================================================

ministry_shadow_controller_types:
- none
- ruler_circle
- old_nobility
- cabinet_core
- bureaucracy
- military_command
- doctrine_authority
- business_elite
- city_alliance
- reconstruction_authority


# ============================================================
# 4. FINAL RULE
# ============================================================

The ministry model must support
both visible administration
and hidden influence over administration.
