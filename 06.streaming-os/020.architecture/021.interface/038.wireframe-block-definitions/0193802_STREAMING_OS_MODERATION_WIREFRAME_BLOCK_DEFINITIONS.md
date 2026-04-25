# ============================================================
# STREAMING OS MODERATION WIREFRAME BLOCK DEFINITIONS
# ============================================================

status: canonical-draft
system: streaming-os
domain: wireframe-block-definitions
owner: Boss
prepared_by: Zero

# ============================================================
# 1. review_queue_home
# ============================================================

blocks:
- top_app_bar
- queue_scope_tabs
- priority_filter_bar
- overdue_summary_block
- review_queue_list
- escalation_alert_summary_block
- operator_shortcuts_block

# ============================================================
# 2. ai_review_findings_detail
# ============================================================

blocks:
- top_app_bar
- target_summary_block
- ai_findings_summary_block
- suspected_rights_issue_block
- suspected_safety_issue_block
- suspected_age_issue_block
- suspected_ad_issue_block
- escalation_recommendation_block
- next_action_bar

# ============================================================
# 3. human_review_task_detail
# ============================================================

blocks:
- top_app_bar
- target_summary_block
- prior_ai_findings_block
- reviewer_assignment_block
- decision_workspace_block
- evidence_reference_block
- final_decision_action_bar

# ============================================================
# 4. rights / safety / age / ad review panels
# ============================================================

common_blocks:
- top_app_bar
- target_summary_block
- dimension_specific_findings_block
- rule_reference_block
- decision_selector_block
- decision_note_block
- save_dimension_result_action

# ============================================================
# 5. moderation_decision_confirm
# ============================================================

blocks:
- top_app_bar
- consolidated_dimension_summary_block
- final_decision_selector_block
- final_decision_note_block
- confirm_action_bar

# ============================================================
# 6. report_queue / report_detail
# ============================================================

report_queue_blocks:
- top_app_bar
- status_filter_bar
- report_queue_list
- intake_summary_block

report_detail_blocks:
- top_app_bar
- report_summary_block
- target_preview_block
- report_reason_block
- moderation_or_review_link_block
- resolution_action_bar

# ============================================================
# 7. comment_moderation_queue / detail
# ============================================================

queue_blocks:
- top_app_bar
- moderation_filter_bar
- flagged_comment_list

detail_blocks:
- top_app_bar
- comment_context_block
- moderation_status_block
- moderation_reason_block
- moderation_action_bar
- history_block

# ============================================================
# 8. appeal / restoration / ban overview
# ============================================================

appeal_queue_blocks:
- top_app_bar
- appeal_status_filter_bar
- appeal_list

appeal_detail_blocks:
- top_app_bar
- appeal_summary_block
- prior_decision_block
- appeal_reason_block
- re_review_action_bar

restoration_queue_blocks:
- top_app_bar
- restoration_status_filter_bar
- restoration_list

restoration_detail_blocks:
- top_app_bar
- restoration_summary_block
- restriction_history_block
- restoration_decision_block
- confirm_action_bar

ban_overview_blocks:
- top_app_bar
- restricted_target_summary_block
- current_restriction_state_block
- restoration_entry_block

