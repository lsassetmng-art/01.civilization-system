# ============================================================
# EXAM ANSWER EDITABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: exam-answer-editability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EDIT RULE
# ============================================================

edit_rule:
- user_may_edit_current_answer_before_submission
- unchanged_auto_answer_remains_valid
- event_rule_may_limit_edit_scope
- time_expired_state_blocks_further_edit


# ============================================================
# 2. FINAL RULE
# ============================================================

Auto-generated answers
must be user-correctable where the event rule allows.
