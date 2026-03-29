# ============================================================
# EXAM OFFICIAL ATTEMPT MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: exam-official-attempt

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OFFICIAL ATTEMPT RULE
# ============================================================

official_attempt_rule:
- official_attempt_is_formal_result_attempt
- only_official_attempt_may_update_formal_exam_record
- official_attempt_may_produce_score_or_pass_fail
- official_attempt_completion_may_unlock_replay_mode


# ============================================================
# 2. OUTPUT TYPES
# ============================================================

official_attempt_outputs:
- official_score
- pass_fail_result
- route_unlock
- route_restriction
- next_event_trigger


# ============================================================
# 3. FINAL RULE
# ============================================================

Formal exam truth
must be produced only by official attempts.
