# ============================================================
# COMMON EXAM UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: common-exam-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- exam_overview
- exam_class_display
- official_attempt_state
- auto_answer_state
- answer_edit_surface
- remaining_time_display
- submission_state
- official_score_display
- route_binding_display
- replay_unlock_state
- replay_notice


# ============================================================
# 2. REQUIRED REPLAY NOTICE
# ============================================================

required_replay_notice:
- replay_results_do_not_affect_official_result


# ============================================================
# 3. FINAL RULE
# ============================================================

Exam UI
must clearly separate official result from replay mode.
