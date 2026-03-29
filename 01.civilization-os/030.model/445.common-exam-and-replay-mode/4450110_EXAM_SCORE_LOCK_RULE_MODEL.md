# ============================================================
# EXAM SCORE LOCK RULE MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: exam-score-lock-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LOCK RULE
# ============================================================

lock_rule:
- replay_result_must_not_change_official_score
- replay_result_must_not_change_official_pass_fail
- replay_result_must_not_change_formal_public_record
- replay_result_must_not_change_qualification_state
- replay_result_must_not_change_formal_route_result


# ============================================================
# 2. FINAL RULE
# ============================================================

Official result truth
must remain locked after formal completion.
