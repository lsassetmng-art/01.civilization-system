# ============================================================
# FOUNDATION PROJECTION POLICY SQL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_projection_plan:
- public principal read
  - use projection-safe subset view
- public session read
  - use projection-safe subset view
- oversight-safe read
  - use constrained oversight-safe projection
- owner/control read
  - use owner/control scoped projection
- support-path access
  - use explicit audit-linked access path only

draft_policy_plan:
- avoid unrestricted base-table reads for public surfaces
- keep support-path separate from ownership semantics
- keep oversight-safe subset broader than public but narrower than support-path
- keep lifecycle mutation authority auditable and bounded

open_review_points:
- whether views or security-barrier views are preferred
- where transition audit records are physically stored
- whether policy enforcement should be fully view-based or mixed with row-level policy later
- how channel/company-linked future visibility is layered without reopening K1 semantics

important_note:
This memo describes projection/policy SQL direction only.
It is not final policy SQL.
