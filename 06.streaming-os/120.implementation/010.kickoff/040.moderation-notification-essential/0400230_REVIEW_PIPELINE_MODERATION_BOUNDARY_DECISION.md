# ============================================================
# REVIEW PIPELINE MODERATION BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K4-001

decision:
Review pipeline objects and moderation outcome objects remain distinct families.

review_pipeline_objects:
- review_queue_item
- ai_review_job
- human_review_task
- review_decision_record
- review_dimension_result
- re_review_request
- restoration_review_record

moderation_objects:
- comment_record
- comment_moderation_state
- report_record
- appeal_record
- moderation_restoration_record

rules:
- review pipeline coordinates evaluation workflow
- moderation objects represent affected content, reports, appeals, and outcome state
- review queue item must not substitute for report, appeal, or comment moderation state
