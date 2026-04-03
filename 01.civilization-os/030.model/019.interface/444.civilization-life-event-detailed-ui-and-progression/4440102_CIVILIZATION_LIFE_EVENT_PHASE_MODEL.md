# ============================================================
# CIVILIZATION LIFE EVENT PHASE MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-phase

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMON PHASES
# ============================================================

common_phases:
- detected
- eligible_check
- pending_action
- waiting
- under_review
- approved
- rejected
- in_progress
- completed
- failed
- withdrawn
- archived


# ============================================================
# 2. OPTIONAL PHASES
# ============================================================

optional_phases:
- application_open
- exam_pending
- interview_pending
- treatment_pending
- transfer_prepared
- legal_review
- public_notice
- support_waiting
- emergency_mode


# ============================================================
# 3. FINAL RULE
# ============================================================

Long-running life events
must expose explicit phases.
