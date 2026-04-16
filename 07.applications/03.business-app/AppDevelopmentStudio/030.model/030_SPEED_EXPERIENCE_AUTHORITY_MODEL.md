# ============================================================
# SPEED EXPERIENCE AUTHORITY MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines authority model for speed-experience features.

authority_actions:
- quick_start_execute
- instant_result_view
- live_preview_view
- starter_pack_generate
- diff_review_view
- diff_revert_execute
- promote_to_governed
- fast_mode_use
- governed_mode_use

role_expectations:
- smartphone_reviewer may execute quick_start_execute
- smartphone_reviewer may use instant_result_view
- smartphone_reviewer may use live_preview_view
- smartphone_reviewer may use diff_review_view
- smartphone_reviewer may use promote_to_governed if authorized
- pc_operator may execute all speed-experience actions
- governed adoption remains subject to normal approval rules
