# ============================================================
# EXPENSE NOTIFICATION DESIGN
# ============================================================

status: canonical
layer: operations
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines notification design for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- notification must support action, not create noise
- business notifications and system notifications must be separated
- notification meaning must remain consistent across iphone, android, pc, and tablet
- multilingual support must be preserved at message-template level
- multi currency support must preserve amount and currency visibility where relevant
- notification must never replace formal business history
- unread notification and unresolved business state are not the same thing

# ============================================================
# 1. NOTIFICATION CATEGORIES
# ============================================================

notification_categories:
- action_required
- status_update
- failure_alert
- reminder
- informational

category_meaning:

  action_required:
    meaning:
      - user must take action to move business flow forward

  status_update:
    meaning:
      - state changed and user should be informed

  failure_alert:
    meaning:
      - business or integration flow failed or is blocked

  reminder:
    meaning:
      - user has not yet acted on pending or time-sensitive work

  informational:
    meaning:
      - non-blocking visibility support

# ============================================================
# 2. PRIMARY RECIPIENT TYPES
# ============================================================

recipient_types:
- applicant
- approver
- finance
- admin
- delegated_actor
- system_observer_optional

notes:
- applicant receives own submission-related notices
- approver receives routed approval notices
- finance receives finance-review and ERP-related notices
- admin should not receive routine operational noise by default
- delegated actor receives only delegated-scope notices

# ============================================================
# 3. DELIVERY CHANNELS
# ============================================================

delivery_channels:
- in_app_notification_center
- push_notification
- email_optional
- desktop_web_badge
- tablet_badge
- mobile_badge

channel_policy:
- in-app notification center is canonical user-facing channel
- push is for timely awareness, not full business truth
- email is optional and policy-dependent
- all channels must resolve back to canonical in-app detail or screen

# ============================================================
# 4. CORE BUSINESS EVENTS THAT TRIGGER NOTIFICATIONS
# ============================================================

core_business_events:
- report_submitted
- report_returned
- report_rejected
- report_approved
- finance_review_required
- finance_marked_policy_blocked
- finance_marked_evidence_defect
- finance_marked_ready_for_erp
- erp_publication_requested
- erp_publication_confirmed
- erp_publication_failed
- settlement_completed
- reminder_unsubmitted_draft
- reminder_pending_approval
- reminder_pending_finance_review
- reminder_erp_failure_unresolved
- candidate_received_from_secretary

# ============================================================
# 5. APPLICANT NOTIFICATIONS
# ============================================================

applicant_notifications:

  - event: report_returned
    category: action_required
    recipient: applicant
    message_meaning:
      - your report was returned and needs correction
    deep_link_target:
      - expense_report_detail
    required_payload:
      - expense_report_id
      - title
      - return_reason_summary
      - returned_at

  - event: report_rejected
    category: status_update
    recipient: applicant
    message_meaning:
      - your report was rejected
    deep_link_target:
      - expense_report_detail
    required_payload:
      - expense_report_id
      - title
      - rejection_reason_summary
      - rejected_at

  - event: report_approved
    category: status_update
    recipient: applicant
    message_meaning:
      - your report completed approval and moved forward
    deep_link_target:
      - expense_report_detail
    required_payload:
      - expense_report_id
      - title
      - approved_at

  - event: finance_marked_policy_blocked
    category: action_required
    recipient: applicant
    message_meaning:
      - your report is blocked by policy and needs correction path
    deep_link_target:
      - expense_report_detail
    required_payload:
      - expense_report_id
      - title
      - block_reason_summary
      - blocked_at

  - event: finance_marked_evidence_defect
    category: action_required
    recipient: applicant
    message_meaning:
      - your evidence needs correction or replacement
    deep_link_target:
      - receipt_attach
    required_payload:
      - expense_report_id
      - affected_item_count
      - defect_reason_summary
      - defect_at

  - event: erp_publication_confirmed
    category: status_update
    recipient: applicant
    message_meaning:
      - your report has been formally reflected to ERP
    deep_link_target:
      - expense_report_detail
    required_payload:
      - expense_report_id
      - erp_document_ref
      - confirmed_at

  - event: settlement_completed
    category: status_update
    recipient: applicant
    message_meaning:
      - your reimbursement or settlement process is complete
    deep_link_target:
      - history_list
    required_payload:
      - expense_report_id
      - settled_at

  - event: reminder_unsubmitted_draft
    category: reminder
    recipient: applicant
    message_meaning:
      - you still have unfinished or unsubmitted expense drafts
    deep_link_target:
      - draft_list
    required_payload:
      - draft_count
      - oldest_draft_age_days

  - event: candidate_received_from_secretary
    category: informational
    recipient: applicant
    message_meaning:
      - a suggested expense candidate is available
    deep_link_target:
      - candidate_inbox
    required_payload:
      - candidate_count
      - latest_candidate_at

# ============================================================
# 6. APPROVER NOTIFICATIONS
# ============================================================

approver_notifications:

  - event: report_submitted
    category: action_required
    recipient: approver
    message_meaning:
      - a report is waiting for your approval action
    deep_link_target:
      - approval_queue
    required_payload:
      - expense_report_id
      - applicant_user_id
      - title
      - total_amount
      - report_currency_code
      - submitted_at

  - event: report_resubmitted
    category: action_required
    recipient: approver
    message_meaning:
      - a corrected report returned to your queue
    deep_link_target:
      - approval_queue
    required_payload:
      - expense_report_id
      - applicant_user_id
      - title
      - resubmitted_at

  - event: reminder_pending_approval
    category: reminder
    recipient: approver
    message_meaning:
      - approval items remain pending
    deep_link_target:
      - approval_queue
    required_payload:
      - pending_count
      - oldest_pending_age_days

  - event: duplicate_suspected_in_assigned_report
    category: informational
    recipient: approver
    message_meaning:
      - a report in your queue includes duplicate suspicion
    deep_link_target:
      - duplicate_warning_detail
    required_payload:
      - expense_report_id
      - suspected_item_count

# ============================================================
# 7. FINANCE NOTIFICATIONS
# ============================================================

finance_notifications:

  - event: report_approved
    category: action_required
    recipient: finance
    message_meaning:
      - an approved report is waiting for finance review
    deep_link_target:
      - finance_review_queue
    required_payload:
      - expense_report_id
      - applicant_user_id
      - title
      - total_amount
      - report_currency_code
      - approved_at

  - event: finance_marked_ready_for_erp
    category: status_update
    recipient: finance
    message_meaning:
      - a report is ready for ERP publication
    deep_link_target:
      - erp_publication_queue
    required_payload:
      - expense_report_id
      - ready_at

  - event: erp_publication_failed
    category: failure_alert
    recipient: finance
    message_meaning:
      - ERP publication failed and needs retry or investigation
    deep_link_target:
      - erp_failure_queue
    required_payload:
      - expense_report_id
      - error_code
      - error_message
      - failed_at

  - event: reminder_pending_finance_review
    category: reminder
    recipient: finance
    message_meaning:
      - approved reports remain unreviewed
    deep_link_target:
      - finance_review_queue
    required_payload:
      - pending_count
      - oldest_pending_age_days

  - event: reminder_erp_failure_unresolved
    category: reminder
    recipient: finance
    message_meaning:
      - failed ERP publications remain unresolved
    deep_link_target:
      - erp_failure_queue
    required_payload:
      - failed_count
      - oldest_failed_age_days

  - event: month_close_risk_detected
    category: failure_alert
    recipient: finance
    message_meaning:
      - current month close may be delayed by unresolved items
    deep_link_target:
      - monthly_close_support
    required_payload:
      - target_month
      - blocked_count
      - failed_count
      - pending_count

# ============================================================
# 8. ADMIN NOTIFICATIONS
# ============================================================

admin_notifications:

  - event: abnormal_failure_volume_detected
    category: informational
    recipient: admin
    message_meaning:
      - operational abnormality is visible and may require governance review
    deep_link_target:
      - monthly_close_support
    required_payload:
      - target_scope
      - anomaly_summary
      - detected_at

policy_note:
- admin should not receive ordinary day-to-day report events by default
- admin notifications are exception-oriented, not routine queue traffic

# ============================================================
# 9. NOTIFICATION PAYLOAD BASELINE
# ============================================================

notification_payload_baseline:
  json:
    notification_id: string
    category: string
    recipient_user_id: string
    recipient_role_type: string
    event_type: string
    title_message_key: string
    body_message_key: string
    message_params:
      expense_report_id: string|null
      title: string|null
      total_amount: number|null
      currency_code: string|null
      actor_name: string|null
      action_reason_summary: string|null
      error_code: string|null
      target_month: string|null
    deep_link_target: string
    deep_link_params: object
    is_read: boolean
    is_resolved: boolean
    created_at: string
    read_at: string|null
    resolved_at: string|null

notes:
- message keys support multilingual rendering
- params carry structured business values
- total_amount and currency_code must remain separate

# ============================================================
# 10. READ / RESOLVED SEMANTICS
# ============================================================

read_resolved_semantics:
- is_read means the user saw the notification
- is_resolved means the notification's business purpose is no longer pending
- a user may read a notification without resolving the underlying issue
- notification resolution may be automatic when underlying business state is resolved
- some informational notifications may be read-only and not require resolution

# ============================================================
# 11. REMINDER DESIGN
# ============================================================

reminder_design:
- reminders must be periodic but limited
- reminders must stop after issue resolution
- reminders must not continue after state becomes terminal or irrelevant
- reminders should prefer summary style over spammy per-record repetition
- reminder cadence should be policy-controlled, not hard-coded at business meaning level

reminder_targets:
- unsubmitted drafts
- pending approvals
- pending finance review
- unresolved ERP failures
- month-close risk conditions

# ============================================================
# 12. BADGE / CENTER RULE
# ============================================================

badge_center_rule:
- badge count reflects unread or unresolved actionable items according to channel policy
- notification center is a support surface, not the canonical audit trail
- notification center entries must deep-link into the authoritative screen
- bulk mark-as-read is acceptable
- bulk resolve is not allowed unless backed by true business resolution logic

# ============================================================
# 13. SILENCE / SUPPRESSION RULE
# ============================================================

silence_suppression_rule:
- duplicate notifications for the same unresolved condition should be suppressed or summarized
- low-priority informational notices may be bundled
- repeated ERP failure reminders should summarize unresolved count where possible
- routine applicant self-actions should not generate unnecessary duplicate status noise

# ============================================================
# 14. SECURITY / PRIVACY RULE
# ============================================================

security_privacy_rule:
- push notifications must avoid leaking sensitive details on locked screens where policy requires
- receipt content itself should not be embedded in notification body
- financial amounts may require policy-based masking in some channels
- full detail access must always return through authorized in-app view

# ============================================================
# 15. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This notification design supports:
- applicant correction flow
- approver responsiveness
- finance operational control
- ERP failure visibility
- month-close risk awareness
without confusing notifications with canonical business history.

