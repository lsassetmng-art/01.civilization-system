# ============================================================
# MODERATION NOTIFICATION SQL PRECISION PROVISIONAL REVIEW FILL
# ============================================================

status: canonical-provisional-review-fill
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Provides Zero's provisional fill for the K4 SQL precision worksheet.
This is a draft for review acceleration and not final DB sign-off.

review_position:
- provisional
- pending Sato(DB reviewer) review
- no SQL executed

provisional_recommendations:

review_pipeline_tables:
- review-side ids
  - recommended_choice: uuid
- cross-review FKs
  - recommended_choice: uuid FK
- actor linkage ids
  - recommended_choice: uuid FK or uuid actor reference
- state families
  - recommended_choice: text + check constraint
- due/urgency time fields
  - recommended_choice: timestamptz nullable
- limited-outcome support
  - recommended_choice: projection/view strategy rather than duplicative base columns unless proven necessary

moderation_tables:
- comment/report/appeal/restoration ids
  - recommended_choice: uuid
- comment_body
  - recommended_choice: text
- evidence refs
  - recommended_choice: jsonb
  - rationale: variable evidence reference family and count
- moderation/report/appeal/decision state families
  - recommended_choice: text + check constraint
- actor linkage
  - recommended_choice: uuid FK or uuid actor reference
- note fields
  - recommended_choice: text

notification_tables:
- platform_event / notification / delivery ids
  - recommended_choice: uuid
- title / preview / detail text families
  - recommended_choice: text
- read_flag
  - recommended_choice: boolean default false
- event/type/state families
  - recommended_choice: text + check constraint
- delivery state internals
  - recommended_choice: runtime-only visibility with separate projection-safe read path
- review_alert and escalation_alert
  - recommended_choice: separate table families remain acceptable

indexes_and_constraints:
- review queue lookup
  - recommended_choice: index(priority_class, updated_at), index(target_type, target_id)
- moderation target lookup
  - recommended_choice: index(target_type, target_id)
- notification recipient lookup
  - recommended_choice: index(recipient_principal_id, created_at desc)
- alert urgency lookup
  - recommended_choice: index(priority_class, updated_at)
- partial indexes
  - recommended_choice: defer unless review proves need

policy_projection_strategy:
- recipient notification detail
  - recommended_choice: projection-safe view
- review alerts
  - recommended_choice: role-scoped projection
- delivery-state internals
  - recommended_choice: runtime-only access path
- moderation mutation authority
  - recommended_choice: explicit authority-bound policy path
