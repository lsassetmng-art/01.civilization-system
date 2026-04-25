# ============================================================
# FOUNDATION EXACTNESS ISSUE LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This ledger records issues discovered during K1 exactness review.

issue_states:
- open
- resolved
- deferred_wording_only
- deferred_sql_precision_only

issue_template:
- issue_id
- area
- title
- state
- severity
- summary
- impact
- required_decision
- resolution_note

entries:
- issue_id: K1-001
  area: principal
  title: confirm whether handle uniqueness is global or scoped
  state: resolved
  severity: medium
  summary: The exactness pack fixed handle as business-level unique and required explicit scope confirmation.
  impact: affected SQL unique strategy and API validation wording
  required_decision: resolved
  resolution_note: global business-level uniqueness confirmed by 0100210_PRINCIPAL_HANDLE_UNIQUENESS_SCOPE_DECISION.md

- issue_id: K1-002
  area: session
  title: confirm lifecycle transition preconditions per action
  state: resolved
  severity: high
  summary: transition_action allowlist was fixed, but exact state-to-state preconditions needed explicit confirmation.
  impact: affected session transition validation and audit design
  required_decision: resolved
  resolution_note: precondition matrix confirmed by 0100220_SESSION_TRANSITION_PRECONDITION_MATRIX_DECISION.md

- issue_id: K1-003
  area: auth-rls
  title: confirm company_overseer read subset for principal/session
  state: resolved
  severity: high
  summary: oversight-safe subset was semantically fixed, but the exact readable boundary needed clearer definition.
  impact: affected projection and later policy SQL
  required_decision: resolved
  resolution_note: oversight-safe subset confirmed by 0100230_COMPANY_OVERSEER_READABLE_SUBSET_DECISION.md
