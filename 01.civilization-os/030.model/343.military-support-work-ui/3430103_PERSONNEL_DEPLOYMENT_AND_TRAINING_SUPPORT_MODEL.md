# ============================================================
# PERSONNEL DEPLOYMENT AND TRAINING SUPPORT MODEL
# ============================================================

status: canonical
layer: model
scope: military-support-work-ui
component: personnel-deployment-and-training-support

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PERSONNEL FIELDS
# ============================================================

personnel_fields:
- personnel_group_id
- active_support_staff
- training_instructors
- transport_staff
- medical_support_staff
- reserve_support_staff
- fatigue_level
- qualification_tags
- reassignment_cost
- morale_stability


# ============================================================
# 2. DEPLOYMENT SUPPORT ACTIONS
# ============================================================

deployment_support_actions:
- assign_support_staff_to_base
- assign_support_staff_to_convoy
- assign_support_staff_to_training
- assign_support_staff_to_recovery_unit
- reassign_overloaded_staff
- mobilize_reserve_support_staff
- reduce_noncritical_support_posts


# ============================================================
# 3. TRAINING SUPPORT ACTIONS
# ============================================================

training_support_actions:
- allocate_training_material
- allocate_instructor_time
- increase_basic_training_capacity
- increase_specialized_training_capacity
- reduce_training_load
- accelerate_readiness_training
- prioritize_officer_track_support
- prioritize_conscript_support


# ============================================================
# 4. FINAL RULE
# ============================================================

Rear personnel support must show
that readiness depends on support labor,
not only on frontline numbers.
