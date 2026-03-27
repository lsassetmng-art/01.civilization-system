# ============================================================
# CASUALTY RECOVERY AND REINTEGRATION MODEL
# ============================================================

status: canonical
layer: model
scope: military-support-work-ui
component: casualty-recovery-and-reintegration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CASUALTY CLASSES
# ============================================================

casualty_classes:
- minor_injury
- major_injury
- long_recovery_case
- permanent_disability_case
- stress_or_breakdown_case
- death_case


# ============================================================
# 2. RECOVERY FIELDS
# ============================================================

recovery_fields:
- case_id
- casualty_class
- recovery_resource_need
- medical_priority
- reintegration_supported
- retraining_supported
- compensation_process_state
- family_support_state
- employer_seat_protection_state


# ============================================================
# 3. RECOVERY ACTIONS
# ============================================================

recovery_actions:
- allocate_medical_priority
- allocate_family_support
- start_retraining_support
- start_reintegration_review
- start_compensation_process
- maintain_employer_seat_protection
- reclassify_to_noncombat_support
- memorialize_death_case


# ============================================================
# 4. FINAL RULE
# ============================================================

Rear support must model
how injured personnel are carried,
how families are supported,
and how service does or does not return to life continuity.
