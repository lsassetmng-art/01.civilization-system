# ============================================================
# EXAM SUBMISSION FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: exam-submission-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FLOW
# ============================================================

submission_flow:
- exam_start
- auto_answer_generated
- optional_user_review
- optional_user_edit
- manual_submit_or_timeout
- final_answer_locked
- official_or_replay_result_handling


# ============================================================
# 2. TIMEOUT RULE
# ============================================================

timeout_rule:
- current_answer_is_auto_submitted_on_time_expiry


# ============================================================
# 3. FINAL RULE
# ============================================================

Exam submission
must support both manual submission and timeout-based auto submission.
