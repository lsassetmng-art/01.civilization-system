# ============================================================
# MBO REOPEN GOVERNANCE POLICY
# ============================================================

status: canonical
application: Mbo
layer: policy
owner: Boss
prepared_by: Zero

purpose:
Defines governed reopen policy for finalized or transferred records.

principles:
- reopen is exceptional
- reopen is governance-controlled
- reopen must never behave like ordinary editing
- reopen history must remain auditable
- reopen must preserve prior confirmation history
- transferred records require stricter control than finalized-only records

# ============================================================
# 1. REOPEN TARGET LEVELS
# ============================================================

reopen_target_levels:

  finalized_record_reopen:
    meaning:
      Reopen a finalized but not yet transferred record.
    default_allowed: true
    governance_level: high

  transferred_record_reopen:
    meaning:
      Reopen a record that has already been transmitted to ERP.
    default_allowed: conditional
    governance_level: very_high

# ============================================================
# 2. ALLOWED REOPEN REASONS
# ============================================================

allowed_reopen_reasons:
- material_input_error
- evaluator_error
- governance_correction
- ERP_rejection_requires_fix
- compliance_required_correction

disallowed_reopen_reasons:
- casual_text_cleanup
- preference_change_only
- untracked score_tuning
- silent record replacement

# ============================================================
# 3. REQUIRED GOVERNANCE DATA
# ============================================================

required_governance_data:
- reopen_request_id
- objective_id
- evaluation_id
- requested_by_user_id
- requested_at
- reopen_reason_code
- reopen_reason_detail
- current_state
- target_state
- approval_required_flag
- approved_by_user_id
- approved_at
- reopen_scope
- reopen_status

reopen_scope_candidates:
- evaluation_only
- evaluation_and_objective
- evaluation_and_action_plan
- full_record_scope

reopen_status_candidates:
- requested
- under_review
- approved
- rejected
- executed
- closed

# ============================================================
# 4. APPROVAL POLICY
# ============================================================

approval_policy:

  finalized_record_reopen:
    requires:
      - explicit request
      - explicit approval
      - recorded approver
      - recorded reason
      - recorded scope

  transferred_record_reopen:
    requires:
      - explicit request
      - explicit approval
      - recorded approver
      - recorded reason
      - recorded scope
      - ERP impact check
      - resend or correction strategy note

approval_note:
No reopen may be executed without recorded approval
in the governed reopen process.

# ============================================================
# 5. STATE EFFECT POLICY
# ============================================================

state_effect_policy:

  finalized_record_reopen:
    state_change:
      - objective state moves from finalized to evaluation_drafted
    notes:
      - final_lock_flag becomes false only through governed process
      - prior confirmation history remains retained

  transferred_record_reopen:
    state_change:
      - objective state moves from transferred to evaluation_drafted only through governed process
    notes:
      - ERP-side impact must be recorded
      - prior transmission history remains retained
      - resend/correction path must be tracked separately

# ============================================================
# 6. HISTORY RETENTION POLICY
# ============================================================

history_retention_policy:
- original confirmation history must remain readable
- original ERP transmission history must remain readable
- reopen execution must create separate historical records
- post-reopen reconfirmation must not erase prior versions

