# ============================================================
# MODERATION NOTIFICATION EXACTNESS REVIEW CHECKLIST
# ============================================================

status: canonical-checklist
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

review_targets:
- 0400120_REVIEW_PIPELINE_EXACT_PAYLOAD.md
- 0400130_MODERATION_EXACT_PAYLOAD.md
- 0400140_NOTIFICATION_EXACT_PAYLOAD.md
- 0400150_REVIEW_PIPELINE_TABLE_COLUMN_EXACTNESS.md
- 0400160_MODERATION_TABLE_COLUMN_EXACTNESS.md
- 0400170_NOTIFICATION_TABLE_COLUMN_EXACTNESS.md
- 0400180_AUTH_RLS_EXACTNESS.md
- 0400190_SCREEN_TO_ENDPOINT_MAPPING.md

checklist:
- review pipeline remains distinct from moderation outcome state
- report / appeal / restoration remain distinct flows
- review alert remains distinct from general notification
- notification recipient view remains distinct from runtime delivery state
- end-user cannot mutate moderation-only state
- platform_event_record remains non-public root event object
