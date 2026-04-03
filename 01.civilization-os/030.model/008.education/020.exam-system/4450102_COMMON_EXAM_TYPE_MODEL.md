# ============================================================
# COMMON EXAM TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: common-exam-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMON EXAM TYPES
# ============================================================

common_exam_types:
- national_common_exam
- higher_education_common_exam
- regional_common_exam
- public_service_foundation_common_exam


# ============================================================
# 2. COMMON EXAM FEATURES
# ============================================================

common_exam_features:
- shared_score_usage
- multi_route_binding
- official_score_record
- route_unlock_dependency
- replay_unlock_after_official_attempt


# ============================================================
# 3. FINAL RULE
# ============================================================

Common exams
must be modeled as score-bearing shared-route exams.
