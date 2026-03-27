# ============================================================
# RECOVERY DISCHARGE AND CONTINUITY MODEL
# ============================================================

status: canonical
layer: model
scope: medical-work-ui
component: recovery-discharge-and-continuity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOVERY FIELDS
# ============================================================

recovery_fields:
- case_id
- recovery_progress
- discharge_readiness
- home_support_need
- rehab_need
- chronic_followup_need
- terminal_support_need
- employer_or_school_return_need
- family_burden_risk


# ============================================================
# 2. ACTIONS
# ============================================================

recovery_actions:
- approve_discharge
- delay_discharge
- assign_rehabilitation
- assign_home_support_referral
- assign_followup_visit
- assign_terminal_support
- prepare_school_return_note
- prepare_work_return_note
- family_support_guidance


# ============================================================
# 3. FINAL RULE
# ============================================================

Medical care must not end at survival;
continuity after treatment must remain visible.
