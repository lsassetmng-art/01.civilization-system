# ============================================================
# SPEED EXPERIENCE FAILURE MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines failure and fallback states for speed-experience flows.

failure_states:
- quick_start_rejected
- quick_start_failed
- preview_partial
- preview_failed
- starter_pack_generation_rejected
- starter_pack_generation_failed
- diff_unavailable
- revert_rejected
- revert_failed
- promotion_rejected
- promotion_failed

fallback_actions:
- retry
- reduce_scope
- switch_to_pc
- switch_to_governed_review
- view_reason
- save_partial_result

model_principle:
Failure must not silently disappear.
Fallback must be understandable.
