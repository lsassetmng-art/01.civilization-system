# ============================================================
# CORPORATE EXACTNESS REVIEW CHECKLIST
# ============================================================

status: canonical-checklist
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

review_targets:
- 0500120_CORPORATE_EXACT_PAYLOAD.md
- 0500130_CHANNEL_AND_OVERSIGHT_TABLE_COLUMN_EXACTNESS.md
- 0500140_AUTH_RLS_EXACTNESS.md
- 0500150_SCREEN_TO_ENDPOINT_MAPPING.md

checklist:
- public channel visibility remains distinct from oversight visibility
- affiliation does not imply ownership mutation
- affiliated streamer reference remains distinct from channel identity
- company dashboard remains company-scoped, not public-scoped
- channel profile editing remains distinct from oversight mutation
