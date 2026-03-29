# ============================================================
# EXAM REPLAY MODE MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: exam-replay-mode

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REPLAY RULE
# ============================================================

replay_rule:
- replay_mode_unlocks_after_official_attempt_completion
- replay_mode_allows_unlimited_retry
- replay_mode_is_review_and_training_only
- replay_mode_results_are_non_formal


# ============================================================
# 2. REPLAY USES
# ============================================================

replay_uses:
- review
- practice
- answer_recheck
- self_training
- route_preparation_reference


# ============================================================
# 3. FINAL RULE
# ============================================================

Replay mode
must allow repeated solving without changing formal truth.
