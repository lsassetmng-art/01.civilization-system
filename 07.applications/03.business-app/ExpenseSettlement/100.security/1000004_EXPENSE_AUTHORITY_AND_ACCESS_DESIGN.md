# ============================================================
# EXPENSE AUTHORITY AND ACCESS DESIGN
# ============================================================

status: canonical
layer: security
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines authority and access design for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- authority must be explicit
- view permission and action permission must be separated
- applicant, approver, finance, admin, and system roles must not be conflated
- approval authority does not imply finance authority
- finance authority does not imply ERP/system override authority
- access must follow least privilege
- multilingual and multi currency support do not change authority meaning
- iphone / android / pc / tablet must share the same authority rules

# ============================================================
# 1. ACTOR TYPES
# ============================================================

actor_types:
- applicant
- approver
- finance
- admin
- system_integration

actor_summary:

  applicant:
    meaning:
      - person who creates and submits own expense report
      - may correct and resubmit returned report

  approver:
    meaning:
      - person who reviews and approves / returns / rejects according to route

  finance:
    meaning:
      - person who performs finance-side readiness review and ERP publication control

  admin:
    meaning:
      - person who administers configuration / visibility / supervision
      - not assumed to bypass business controls by default

  system_integration:
    meaning:
      - non-human actor for OCR, sync, derived projection, and ERP result registration

# ============================================================
# 2. ACCESS DIMENSIONS
# ============================================================

access_dimensions:
- report_view
- item_view
- receipt_view
- validation_view
- approval_history_view
- finance_history_view
- erp_result_view
- candidate_view
- draft_edit
- receipt_attach
- submit_action
- approval_action
- finance_action
- erp_publication_action
- settlement_confirmation_action
- admin_configuration_action
- system_projection_action

# ============================================================
# 3. APPLICANT AUTHORITY
# ============================================================

applicant_authority:

  allowed_view:
    - own report_view
    - own item_view
    - own receipt_view
    - own validation_view
    - own approval_history_view
    - own erp_result_view
    - own candidate_view

  allowed_action:
    - create own draft
    - edit own draft when state allows
    - attach or replace own receipt when state allows
    - submit own report
    - withdraw own report only where policy explicitly allows before final approval
    - resubmit returned own report
    - create from template
    - convert own candidate into report/item

  blocked_action:
    - approve own report
    - finance_action on own report
    - ERP publication action
    - settlement confirmation
    - force-clear blocking policy state
    - force-overwrite approval history
    - view other people's reports without separate explicit authority

notes:
- applicant authority is ownership-scoped
- returned/rejected visibility remains visible for explanation
- ownership does not override review-stage locks

# ============================================================
# 4. APPROVER AUTHORITY
# ============================================================

approver_authority:

  allowed_view:
    - assigned approval queue
    - assigned report_view
    - assigned item_view
    - assigned receipt_view
    - assigned validation_view
    - assigned approval_history_view
    - duplicate warning detail where routed

  allowed_action:
    - approve assigned report at current step
    - return assigned report with mandatory reason
    - reject assigned report with mandatory reason
    - review approval history
    - clear or escalate duplicate suspicion only where policy permits in approval stage

  blocked_action:
    - edit applicant expense facts directly
    - replace applicant receipt directly
    - finance mark_ready_for_erp
    - ERP publication action
    - settlement confirmation
    - approve reports outside assigned authority path
    - silently skip approval steps

notes:
- approver scope is routing-scoped, not company-global by default
- approver cannot become applicant editor through approval role alone

# ============================================================
# 5. FINANCE AUTHORITY
# ============================================================

finance_authority:

  allowed_view:
    - finance review queue
    - finance report_view
    - finance item_view
    - finance receipt_view
    - finance validation_view
    - finance approval_history_view
    - finance erp_result_view
    - finance monthly close support visibility
    - finance export center visibility

  allowed_action:
    - mark_ready_for_erp
    - mark_policy_blocked
    - mark_evidence_defect
    - trigger ERP publication request
    - retry failed ERP publication
    - confirm evidence review outcome where policy allows
    - confirm settlement where business process requires finance confirmation
    - export downstream finance review data where permitted

  blocked_action:
    - approve in place of approver without explicit separate approval role
    - edit applicant business facts silently after approval
    - erase approval history
    - fabricate ERP result without system/integration path
    - bypass idempotency or publication logging
    - access unrelated company data without granted scope

notes:
- finance authority begins after approval-side completion or where finance pre-check is explicitly designed
- finance controls readiness and publication, not hidden data rewriting

# ============================================================
# 6. ADMIN AUTHORITY
# ============================================================

admin_authority:

  allowed_view:
    - operational dashboards where policy allows
    - configuration-level visibility
    - supervision visibility according to company scope
    - audit-oriented high-level visibility where allowed

  allowed_action:
    - configure categories, templates, policy parameters, and routing masters
    - configure localization resources and display settings where applicable
    - manage visibility scope and operational settings
    - manage support-level recovery processes that do not bypass business truth

  blocked_action:
    - approve arbitrary reports unless also assigned approver role
    - finance publish arbitrary reports unless also assigned finance role
    - alter report history invisibly
    - bypass audit trail
    - directly mark ERP confirmed without result path
    - directly mark settled without business path

notes:
- admin is a governance/configuration role, not a magical override role
- exceptional recovery must still be audited and explicit

# ============================================================
# 7. SYSTEM / INTEGRATION AUTHORITY
# ============================================================

system_integration_authority:

  allowed_view:
    - machine-required records for OCR, sync, validation projection, and ERP callback handling

  allowed_action:
    - create or update OCR state
    - create validation snapshot projection
    - update derived counters
    - register ERP publication result through contract path
    - update pending operation lifecycle
    - project state changes from valid business events

  blocked_action:
    - invent business approvals
    - invent finance approval
    - create hidden user actions
    - bypass explicit request/result separation
    - mutate user-entered facts without explicit business event

notes:
- system actors project outcomes from allowed inputs
- system authority is technical, not discretionary business authority

# ============================================================
# 8. VIEW ACCESS MATRIX
# ============================================================

view_access_matrix:

  own_report_detail:
    applicant: allowed
    approver: allowed_if_assigned
    finance: allowed_if_in_finance_scope
    admin: allowed_if_governance_scope
    system_integration: limited_technical_only

  receipt_detail:
    applicant: own_only
    approver: allowed_if_assigned
    finance: allowed_if_in_finance_scope
    admin: restricted_by_policy
    system_integration: limited_technical_only

  approval_history:
    applicant: own_only
    approver: allowed_if_assigned
    finance: allowed_if_in_finance_scope
    admin: allowed_if_governance_scope
    system_integration: technical_projection_only

  erp_result:
    applicant: own_visibility_allowed
    approver: optional_if_policy_allows
    finance: allowed
    admin: allowed_if_scope_permits
    system_integration: allowed_for_processing

  candidate_inbox:
    applicant: own_only
    approver: blocked
    finance: blocked
    admin: blocked_by_default
    system_integration: limited_source_processing_only

# ============================================================
# 9. ACTION ACCESS MATRIX
# ============================================================

action_access_matrix:

  create_draft:
    applicant: allowed
    approver: blocked
    finance: blocked
    admin: blocked_by_default
    system_integration: blocked

  edit_draft:
    applicant: allowed_if_state_permits
    approver: blocked
    finance: blocked
    admin: blocked_by_default
    system_integration: blocked

  attach_receipt:
    applicant: allowed_if_state_permits
    approver: blocked
    finance: blocked
    admin: blocked_by_default
    system_integration: blocked

  submit_report:
    applicant: allowed
    approver: blocked
    finance: blocked
    admin: blocked_by_default
    system_integration: blocked

  approval_action:
    applicant: blocked
    approver: allowed_if_assigned
    finance: blocked_unless_also_approver
    admin: blocked_unless_also_approver
    system_integration: blocked

  finance_action:
    applicant: blocked
    approver: blocked_unless_also_finance
    finance: allowed
    admin: blocked_unless_also_finance
    system_integration: blocked

  erp_publication_action:
    applicant: blocked
    approver: blocked
    finance: allowed
    admin: blocked_unless_explicitly_granted
    system_integration: blocked

  erp_result_registration:
    applicant: blocked
    approver: blocked
    finance: blocked_direct_manual_path
    admin: blocked_direct_manual_path
    system_integration: allowed_via_contract

  settlement_confirmation:
    applicant: blocked
    approver: blocked
    finance: allowed_if_process_requires
    admin: blocked_unless_explicitly_granted
    system_integration: allowed_if_contractually_projected

# ============================================================
# 10. STATE-BASED ACCESS RULES
# ============================================================

state_based_access_rules:
- draft may be edited by applicant
- submitted or resubmitted blocks ordinary applicant editing except corrective path defined by business rule
- returned reopens applicant correction scope
- rejected closes current submission cycle for ordinary editing
- approved blocks applicant and approver fact rewriting
- finance blocked states reopen correction only through explicit path
- erp pending / confirmed / failed must not permit silent fact mutation
- settled is effectively read-only for normal users except audited exceptional correction path

# ============================================================
# 11. RECEIPT / EVIDENCE ACCESS RULES
# ============================================================

receipt_evidence_access_rules:
- receipt access is more sensitive than simple report list visibility
- least privilege must apply
- applicant sees own receipts
- approver sees receipts only for assigned reports
- finance sees receipts only in finance scope
- admin receipt access should be restricted and justified
- receipt replacement after approval requires explicit business path and audit visibility

# ============================================================
# 12. MULTI-COMPANY / SCOPE RULE
# ============================================================

scope_rules:
- company boundary is mandatory
- no cross-company visibility by default
- applicant, approver, finance, admin scopes must all be company-scoped
- delegated or substitute authority must still remain inside explicit scope assignment
- broader governance visibility must still be auditable

# ============================================================
# 13. DELEGATION RULE
# ============================================================

delegation_rules:
- delegate submission must be explicit and auditable
- delegate approval must be explicit and auditable
- delegate does not inherit unlimited access
- delegation must be bounded by time, scope, and action type
- principal and delegate identities must remain distinguishable in history

# ============================================================
# 14. AUDIT VISIBILITY RULE
# ============================================================

audit_visibility_rule:
- every approval action must record actor, action, reason, and timestamp
- every finance action must record actor, action, reason, and timestamp
- ERP publication request and result must remain auditable
- access-sensitive recovery operations must remain auditable
- admin supervision must not erase business history

# ============================================================
# 15. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This design prevents confusion between:
- ownership and approval authority
- approval authority and finance authority
- finance authority and system/integration authority
- admin governance authority and business decision authority

