# ============================================================
# EXAM AUTO ANSWER POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: exam-auto-answer-policy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. AUTO ANSWER RULE
# ============================================================

auto_answer_rule:
- default_answer_mode_is_auto_generated
- auto_generated_answer_exists_before_submission
- auto_answer_quality_depends_on_actor_state


# ============================================================
# 2. AUTO ANSWER INPUTS
# ============================================================

auto_answer_inputs:
- learning_score
- school_progress
- qualification_preparation_state
- health_state
- concentration_state
- allowed_item_effect
- institution_support_effect


# ============================================================
# 3. FINAL RULE
# ============================================================

Exam answering
must be convenient by default through auto generation.
