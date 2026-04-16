# ============================================================
# EXPENSE REMINDER POLICY DETAIL
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines reminder policy detail for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- reminder exists to prompt action, not create noise
- reminder must remain distinct from canonical business state
- reminder cadence must be controllable
- reminder must follow authority and responsibility boundaries
- reminder meaning must remain stable across iphone, android, pc, and tablet
- multilingual support applies to reminder templates
- reminder must not disclose more than the recipient is allowed to know

reminder_design_goal:
- reduce forgotten drafts
- reduce stuck approval queues
- reduce stale finance review queues
- reduce unresolved ERP failures
- increase month-close readiness visibility

reminder_target_groups:
- applicant
- approver
- finance
- admin_exception_only

primary_reminder_domains:
- unsubmitted_draft
- returned_report_unresolved
- pending_approval
- pending_finance_review
- unresolved_evidence_defect
- unresolved_policy_block
- unresolved_erp_failure
- month_close_risk

cadence_policy_principle:
- cadence must be centrally policy-controlled
- reminder frequency may differ by domain
- reminders should prefer summary form over repeated per-record spam
- reminders stop when the underlying actionable condition is resolved

recommended_cadence_shape:
- unsubmitted_draft: low to medium cadence
- pending_approval: medium cadence
- pending_finance_review: medium cadence
- unresolved_erp_failure: medium to high cadence
- month_close_risk: event-driven plus controlled recurrence

suppression_rules:
- identical unresolved reminders should be summarized where possible
- reminders should not continue after terminal irrelevant state
- reminders should quiet down when user has already taken meaningful action
- low-value candidate notifications should not become repetitive reminders by default

quiet_rules:
- policy may define quiet hours
- policy may define workday-only reminders
- urgent finance failure reminders may follow stricter operational logic if company policy says so

recipient_rules:
- applicant gets own actionable reminders only
- approver gets routed queue reminders only
- finance gets finance-scope reminders only
- admin receives exception/operational-risk reminders only by policy

message_rules:
- reminder message should explain what action is pending
- reminder should deep-link to the relevant screen
- reminder should avoid vague “something is wrong” wording
- amount/currency must remain explicit if included

history_rules:
- reminder generation may be logged for operational trace
- reminder read state is not business resolution
- reminder dismissal is not equivalent to state correction unless policy defines explicit resolve semantics

not_allowed:
- reminder used as substitute for approval/finance decision
- endless reminders after resolution
- reminder that reveals unauthorized detail
- reminder semantics differing by device
- reminder cadence hard-coded as business truth

open_policy_variables_to_fix_later:
- exact cadence by reminder domain
- exact quiet-hour policy
- exact suppression thresholds
- exact month-close escalation timing
- exact admin operational-risk reminder criteria

design_consequence:
This policy keeps reminders safe by separating:
- action prompt from business truth
- summary reminder from event notification
- recipient scope from global visibility
- reminder cadence from canonical state meaning

