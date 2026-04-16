# ============================================================
# SPEED EXPERIENCE STATE MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines exact state model for speed-experience features.

states:
- quick_start_idle
- quick_start_running
- instant_result_ready
- live_preview_loading
- live_preview_ready
- starter_pack_generating
- starter_pack_ready
- diff_review_ready
- reverted
- promoted_to_governed
- fast_mode_active
- governed_mode_active

state_meanings:

quick_start_idle:
No quick-start execution is running.

quick_start_running:
Quick-start draft generation is running.

instant_result_ready:
Initial draft result is ready for review.

live_preview_loading:
Preview data is being resolved.

live_preview_ready:
Preview data is available for review.

starter_pack_generating:
Starter pack output is being generated.

starter_pack_ready:
Starter pack output is ready.

diff_review_ready:
Before/after diff can be reviewed.

reverted:
Draft or change set has been reverted.

promoted_to_governed:
Fast-mode result has been promoted into governed flow.

fast_mode_active:
User is working in fast draft mode.

governed_mode_active:
User is working in governed review/adoption mode.
