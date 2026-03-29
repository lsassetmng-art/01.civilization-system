# ============================================================
# PERSONAL ALERT TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: personal-alert-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ALERT TYPES
# ============================================================

alert_types:
- newly_eligible_for_school_application
- newly_eligible_for_qualification_exam
- application_deadline_approaching
- exam_deadline_approaching
- result_available
- qualification_route_unlocked
- public_service_route_unlocked
- recommended_school_match
- recommended_qualification_match


# ============================================================
# 2. FINAL RULE
# ============================================================

Personal alerts
must target actor-relevant life progression events.
