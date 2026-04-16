# ============================================================
# STREAMING OS MODERATION SCREEN INVENTORY AND TRANSITION MAP
# ============================================================

status: canonical-draft
system: streaming-os
domain: screen-inventory-and-transition-map
owner: Boss
prepared_by: Zero

moderation_screens:
- review_queue_home
- ai_review_findings_detail
- human_review_task_detail
- rights_review_panel
- safety_review_panel
- age_gate_review_panel
- ad_suitability_review_panel
- moderation_decision_confirm
- report_queue
- report_detail
- comment_moderation_queue
- comment_moderation_detail
- appeal_queue
- appeal_detail
- restoration_queue
- restoration_detail
- ban_and_restoration_overview

transitions:
- review_queue_home
  -> ai_review_findings_detail
  -> human_review_task_detail
  -> moderation_decision_confirm

- human_review_task_detail
  -> rights_review_panel
  -> safety_review_panel
  -> age_gate_review_panel
  -> ad_suitability_review_panel
  -> moderation_decision_confirm

- report_queue
  -> report_detail
  -> appeal_queue

- comment_moderation_queue
  -> comment_moderation_detail

- appeal_queue
  -> appeal_detail
  -> restoration_queue

- restoration_queue
  -> restoration_detail
  -> ban_and_restoration_overview

primary_entry:
- review_queue_home
secondary_entry:
- report_queue
- comment_moderation_queue

canonical_statement:
Moderation-side screen flow
shall distinguish:
- review queue
- dimension-specific review panels
- report handling
- comment moderation
- appeals
- restoration
- ban/restoration overview

