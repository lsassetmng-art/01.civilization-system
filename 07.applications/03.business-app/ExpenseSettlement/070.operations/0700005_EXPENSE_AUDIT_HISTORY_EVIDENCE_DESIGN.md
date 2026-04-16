# ============================================================
# EXPENSE AUDIT HISTORY EVIDENCE DESIGN
# ============================================================

status: canonical
layer: operations
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines auditability, history preservation, and evidence trace design
for ExpenseSettlement initial release, without entering implementation.

design_policy:
- business history must be explainable after the fact
- audit trail must be additive, not rewrite-based
- approval, finance, ERP, and settlement history must remain separated
- evidence history must preserve integrity meaning
- multilingual display does not alter audit meaning
- multi currency handling must remain auditable as structured business fact
- iphone, android, pc, and tablet must all resolve to the same canonical history meaning

# ============================================================
# 1. DESIGN GOAL
# ============================================================

design_goal:
- explain who did what, when, and why
- explain which state changed and through which business event
- explain what evidence existed at each important review moment
- explain what currency/rate meaning was used when business decisions were made
- explain what was sent to ERP and what ERP returned
- prevent silent overwrite of meaningful history

# ============================================================
# 2. AUDIT DOMAINS
# ============================================================

audit_domains:
- report_lifecycle_audit
- item_fact_audit
- approval_audit
- finance_audit
- erp_publication_audit
- evidence_audit
- validation_audit
- access_sensitive_action_audit
- delegation_audit
- notification_support_audit

# ============================================================
# 3. WHAT MUST ALWAYS BE RECORDED
# ============================================================

must_always_be_recorded:
- report creation
- report submit
- report return
- report reject
- report approve
- finance ready_for_erp
- finance policy_blocked
- finance evidence_defect
- ERP publication request
- ERP publication result
- settlement completion
- evidence attach
- evidence replace
- evidence unreadable/rejected/accepted judgment
- duplicate suspicion raise/clear/confirm
- applicant resubmit
- delegated action where applicable
- policy-relevant currency/rate correction after review stages
- access-sensitive exceptional recovery action

# ============================================================
# 4. AUDIT EVENT MINIMUM FIELDS
# ============================================================

audit_event_minimum_fields:
  json:
    audit_event_id: string
    domain: string
    event_type: string
    company_id: string
    expense_report_id: string|null
    expense_item_id: string|null
    actor_type: string
    actor_user_id: string|null
    actor_display_context: string|null
    source_channel: string
    event_at: string
    state_before: object|null
    state_after: object|null
    reason_code: string|null
    reason_text: string|null
    related_object_ref: object|null
    correlation_id: string|null
    request_id: string|null
    created_at: string

notes:
- state_before / state_after are for explainability, not only raw storage convenience
- actor_type may be applicant, approver, finance, admin, system_integration
- source_channel may be iphone, android, pc, tablet, api, system_callback

# ============================================================
# 5. REPORT LIFECYCLE HISTORY RULE
# ============================================================

report_lifecycle_history_rule:
- every report-level meaningful transition must create a history event
- current visible state is not enough; transition path must remain reconstructable
- returned and rejected histories must retain reason context
- resubmission must not erase original submit path
- settled state must not collapse prior ERP confirmation history

must_preserve_examples:
- created_at
- submitted_at
- returned_at
- rejected_at
- approved_at
- finance_ready_at
- erp_confirmed_at
- settled_at

# ============================================================
# 6. ITEM FACT HISTORY RULE
# ============================================================

item_fact_history_rule:
- item fact changes before review may be summarized, but meaningful corrections should remain traceable
- item fact changes after submit require stronger audit visibility
- category, usage_date, amount, currency_code, exchange_rate, converted_amount,
  payment_method, project_code, and department_code are audit-relevant fields
- post-approval fact correction must require explicit corrective history path

important_rule:
- original user-entered business facts must not disappear silently
- later corrected values may become current, but previous meaningful values should remain explainable

# ============================================================
# 7. APPROVAL HISTORY RULE
# ============================================================

approval_history_rule:
- every approval action must record actor, step, action_type, reason, and timestamp
- multi-step approval must preserve sequence
- approval skip or delegation must be explicit if allowed
- returned/rejected reasons must remain visible in history
- localized labels may vary, but canonical approval action codes remain fixed

minimum_approval_history_fields:
- approval_record_id
- expense_report_id
- approval_step
- actor_user_id
- action_type
- action_reason
- action_at

# ============================================================
# 8. FINANCE HISTORY RULE
# ============================================================

finance_history_rule:
- finance actions must be stored separately from approval actions
- ready_for_erp, policy_blocked, evidence_defect, retry_request, settlement_confirm
  and other finance actions must remain distinguishable
- finance reasoning must remain traceable where policy requires
- finance must not silently rewrite applicant history

minimum_finance_history_fields:
- finance_action_record_id
- expense_report_id
- actor_user_id
- action_type
- action_reason
- action_at

# ============================================================
# 9. ERP PUBLICATION HISTORY RULE
# ============================================================

erp_publication_history_rule:
- ERP publication request and ERP result must remain separate events
- idempotency_key meaning must remain traceable
- success/failure result must preserve received ERP-facing reference or error
- retry attempts must be distinguishable from first attempt
- confirmed ERP state must be explainable from request/result chain

minimum_erp_history_fields:
- request_id
- idempotency_key
- request_payload_hash_or_equivalent_meaning
- requested_by
- requested_at
- result_id
- result_status
- erp_document_ref
- error_code
- error_message
- received_at

# ============================================================
# 10. EVIDENCE HISTORY RULE
# ============================================================

evidence_history_rule:
- evidence attach, replace, reject, unreadable, accept, and OCR transitions must remain traceable
- evidence replacement must not erase prior integrity meaning
- evidence history must preserve sha256 and storage reference context where policy allows
- approval/finance review should be explainable against the evidence state available at that time

minimum_evidence_history_fields:
- expense_receipt_id
- expense_item_id
- file_name
- mime_type
- storage_object_ref_or_equivalent_reference
- sha256
- capture_source
- evidence_state
- ocr_state
- uploaded_at
- verified_at

important_rule:
- evidence content is not the same as evidence history
- audit may reference evidence metadata without exposing content unnecessarily

# ============================================================
# 11. VALIDATION HISTORY RULE
# ============================================================

validation_history_rule:
- blocking_errors, warnings, and missing_required_fields should be reproducible or snapshotted
- submit-time and finance-review-time validation meaning should remain explainable
- policy block caused by validation must remain traceable
- duplicate suspicion changes should remain traceable as validation-relevant history

minimum_validation_snapshot_meaning:
- validation_snapshot_id
- expense_report_id
- snapshot_version
- missing_required_fields
- warnings
- blocking_errors
- validated_at

# ============================================================
# 12. CURRENCY / RATE AUDIT RULE
# ============================================================

currency_rate_audit_rule:
- original amount and original currency are audit-relevant facts
- exchange_rate used for business decision is audit-relevant
- converted_amount and converted_currency are audit-relevant when used
- rate-changing correction after submit/approval/finance review must be explicitly auditable
- ERP handoff must remain explainable against the approved currency interpretation

must_preserve_currency_examples:
- amount
- currency_code
- exchange_rate
- converted_amount
- converted_currency_code
- report_currency_code

# ============================================================
# 13. ACCESS-SENSITIVE ACTION AUDIT RULE
# ============================================================

access_sensitive_action_audit_rule:
- delegated submission
- delegated approval
- exceptional recovery action
- admin configuration change with business effect
- finance retry on ERP failure
- evidence replacement after approval
- policy override if ever allowed
must all be auditable.

important_rule:
- access-sensitive action audit is mandatory even when action is technically successful
- success without trace is not acceptable

# ============================================================
# 14. HISTORY DISPLAY RULE
# ============================================================

history_display_rule:
- timeline view is user support, not the full audit store
- timeline should show actor, action, timestamp, and short reason summary
- detailed audit view may expose richer fields for authorized roles
- applicant sees own meaningful history
- approver sees routed history
- finance sees finance/ERP-relevant history
- admin sees governance-authorized history only

# ============================================================
# 15. IMMUTABILITY / CORRECTION RULE
# ============================================================

immutability_correction_rule:
- audit trail entries should be append-oriented
- incorrect prior business action is corrected by later business event, not hidden rewrite
- visible correction path is preferred over destructive replacement
- exceptional maintenance correction must itself create audit evidence

important_rule:
- canonical business history is not a mutable note field

# ============================================================
# 16. RETENTION RULE
# ============================================================

retention_rule:
- audit and business history retention must follow company and legal policy
- evidence metadata retention may differ from evidence content retention
- retention expiration must not create unexplained gaps in active business flow
- retention/destruction actions themselves may need governance audit

# ============================================================
# 17. CORRELATION RULE
# ============================================================

correlation_rule:
- related events should be traceable via request_id, correlation_id, report_id,
  item_id, request_id/result_id linkage, or equivalent canonical keys
- submit, approval, finance, ERP, and settlement histories should be joinable into one explainable chain
- notification is supplementary and must not be the only source of event correlation

# ============================================================
# 18. DEVICE / CHANNEL TRACE RULE
# ============================================================

device_channel_trace_rule:
- source channel should be traceable at least at coarse level
- iphone, android, pc, tablet, api, and system callback are meaningful channels
- source channel supports investigation and support, but does not change business authority meaning

# ============================================================
# 19. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This design keeps ExpenseSettlement explainable by preserving:
- what happened
- who did it
- when it happened
- why it happened
- what state changed
- what evidence/currency meaning existed at that time
- what was requested from ERP and what ERP returned

