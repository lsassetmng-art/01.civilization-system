# ============================================================
# EXAM DELIVERY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Exam delivery presents questions, captures answers, and finalizes results.

components:
- question_set
- answer_session
- score_evaluation
- immutable_result

rules:
- result is fixed after final submission
- practice retry is allowed
- retry does not change original pass/fail

principle:
- exam result is permanent
- learning mode is separate from official result
