# ============================================================
# APPLY EXECUTION MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines execution of approved apply actions.

definition:
apply_execution records the actual execution attempt of a proposal
against one or more targets.

minimum_fields:
- apply_execution_id
- apply_request_id
- proposal_id
- target_scope
- execution_mode
- execution_status
- backup_mode
- verification_required
- started_at
- finished_at
- executed_by_mode
- error_summary
- created_at
- updated_at

target_scope_examples:
- file
- folder
- sql
- package
- git_worktree
- mixed

execution_mode_examples:
- manual
- approved_auto
- guarded
- external

execution_status_examples:
- pending
- running
- succeeded
- partially_succeeded
- failed
- rolled_back
- rollback_required

relations:
- links to backup_record
- links to verification_result
- links to rollback_record
- links to audit_step

notes:
Apply execution is separate from proposal approval.
