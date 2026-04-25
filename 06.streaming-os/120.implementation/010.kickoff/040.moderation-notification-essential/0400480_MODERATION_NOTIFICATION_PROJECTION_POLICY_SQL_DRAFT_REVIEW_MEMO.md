# ============================================================
# MODERATION NOTIFICATION PROJECTION POLICY SQL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_projection_plan:
- recipient notification reads
  - use recipient-safe notification projections
- review alert reads
  - use role-safe alert projections
- platform event detail reads
  - use projection-safe event detail only
- moderation workspace reads
  - use authority-bounded workspace projections
- delivery state reads
  - keep runtime-only unless explicit role-safe surface is defined later

draft_policy_plan:
- do not expose runtime delivery internals to ordinary recipients
- do not expose raw review workspace state through general notification surfaces
- keep moderation-only mutation authority explicit and auditable
- keep review pipeline and moderation outcome families semantically distinct in projections
- keep review alerts and escalation alerts role-scoped and separate from inbox semantics

open_review_points:
- exact view layering for recipient-safe vs role-safe vs runtime-only surfaces
- whether platform_event_records are exposed only through derived projection views
- where moderation authority enforcement best sits relative to projection design
- whether some alert projections share common helper layers without semantic collapse

important_note:
This memo describes projection/policy SQL direction only.
It is not final policy SQL.
