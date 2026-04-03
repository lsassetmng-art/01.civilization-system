# ============================================================
# COMMON EXAM SCORE PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: common-exam-score-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCORE PROFILE
# ============================================================

score_profile_fields:
- official_score
- score_band
- rank_or_equivalent_band
- route_eligibility_band
- validity_window
- attempt_date


# ============================================================
# 2. RESULT PRINCIPLE
# ============================================================

common_exam_result_principle:
- common_exam_is_score_oriented
- common_exam_may_bind_to_multiple_routes
- score_profile_may_be_used_instead_of_direct_pass_fail_only


# ============================================================
# 3. FINAL RULE
# ============================================================

Common exams
must support explicit score profile handling.
