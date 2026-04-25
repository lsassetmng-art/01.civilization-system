# ============================================================
# CORPORATE PROJECTION POLICY SQL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_projection_plan:
- public channel read
  - use projection-safe public channel view
- owner/control read
  - use owner/control scoped projection
- oversight-safe read
  - use constrained company-scoped oversight projection
- affiliation limited-self read
  - use dedicated constrained affiliation projection
- support-path access
  - use explicit audit-linked access path only

draft_policy_plan:
- never expose oversight-safe data through public channel projection
- never infer ownership mutation authority from affiliation records
- keep affiliated streamer reference separate from channel identity and ownership identity
- keep company-scoped dashboard and oversight surfaces non-public
- keep support-path separate from ordinary owner/company authority

open_review_points:
- exact split between owner/control and oversight-safe views
- whether some affiliation data is visible to target-side self views
- whether public channel views derive directly from channel_records plus profile states or through helper layers
- how future company-root enforcement layers in without reopening K5 semantics

important_note:
This memo describes projection/policy SQL direction only.
It is not final policy SQL.
