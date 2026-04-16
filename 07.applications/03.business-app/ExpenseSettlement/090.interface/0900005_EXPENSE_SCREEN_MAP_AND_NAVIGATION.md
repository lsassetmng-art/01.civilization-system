# ============================================================
# EXPENSE SCREEN MAP AND NAVIGATION
# ============================================================

status: canonical
layer: interface
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the initial release screen set and the major navigation structure
for ExpenseSettlement, based on the decision that MUST + SHOULD features
are included from day one.

design_basis:
- multilingual support is mandatory
- multi currency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory
- same business meaning must be preserved across all supported devices

# ============================================================
# 1. SCREEN GROUPS
# ============================================================

screen_groups:
- employee
- approver
- finance
- shared_detail
- support_flow

# ============================================================
# 2. EMPLOYEE SCREENS
# ============================================================

employee_screens:

  - screen_id: EMP-001
    screen_name: employee_home
    purpose:
      - entry point for personal expense work
      - shows draft, returned, submitted, approved, ERP result summary
      - shows unfinished or secretary-suggested candidates

  - screen_id: EMP-002
    screen_name: draft_list
    purpose:
      - shows all personal draft reports
      - filter by month / status / currency
      - allows continue editing

  - screen_id: EMP-003
    screen_name: new_expense_entry
    purpose:
      - create new report or add item
      - direct manual entry
      - template-based entry
      - candidate-based entry from PocketSecretary

  - screen_id: EMP-004
    screen_name: expense_report_detail
    purpose:
      - view and edit report header
      - view grouped expense items
      - see submit state / approval state / ERP state separately

  - screen_id: EMP-005
    screen_name: expense_item_edit
    purpose:
      - edit category, usage date, amount, currency, payment method
      - edit merchant, tax, project, department, notes
      - show duplicate warning and validation result

  - screen_id: EMP-006
    screen_name: receipt_attach
    purpose:
      - attach receipt image or file
      - preview evidence state
      - show unreadable / missing evidence warnings
      - OCR-ready intake boundary entry

  - screen_id: EMP-007
    screen_name: business_trip_bundle_entry
    purpose:
      - create grouped travel-related items
      - input route, stay, meal, taxi, misc together
      - reduce repeated entry burden

  - screen_id: EMP-008
    screen_name: advance_settlement_entry
    purpose:
      - settle against advance payment
      - show advance-related summary and remaining balance reference

  - screen_id: EMP-009
    screen_name: corporate_card_usage_entry
    purpose:
      - record expense item paid by corporate card
      - separate reimbursement meaning from company-paid meaning

  - screen_id: EMP-010
    screen_name: frequent_templates
    purpose:
      - choose reusable expense templates
      - create from frequent patterns

  - screen_id: EMP-011
    screen_name: submit_confirmation
    purpose:
      - final review before submit
      - confirm missing evidence, duplicate suspicion, policy warnings

  - screen_id: EMP-012
    screen_name: history_list
    purpose:
      - view submitted / approved / rejected / settled history
      - filter by month, currency, state

  - screen_id: EMP-013
    screen_name: candidate_inbox
    purpose:
      - shows PocketSecretary-assisted candidate items
      - lets user convert candidate into formal expense draft/item

# ============================================================
# 3. APPROVER SCREENS
# ============================================================

approver_screens:

  - screen_id: APR-001
    screen_name: approval_queue
    purpose:
      - list reports waiting approver action
      - sort by urgency, amount, submit date, employee

  - screen_id: APR-002
    screen_name: approval_report_review
    purpose:
      - review report, items, receipts, warnings, approval route
      - compare submit state and evidence completeness

  - screen_id: APR-003
    screen_name: return_reason_entry
    purpose:
      - enter mandatory reason for return

  - screen_id: APR-004
    screen_name: rejection_reason_entry
    purpose:
      - enter mandatory reason for rejection

  - screen_id: APR-005
    screen_name: approval_history_view
    purpose:
      - see route progression, prior decisions, timestamps, comments

# ============================================================
# 4. FINANCE SCREENS
# ============================================================

finance_screens:

  - screen_id: FIN-001
    screen_name: finance_review_queue
    purpose:
      - list approved reports waiting finance action
      - review accounting readiness and policy completeness

  - screen_id: FIN-002
    screen_name: finance_report_review
    purpose:
      - verify items, receipts, allocation, tax, payment type
      - decide ERP publication readiness

  - screen_id: FIN-003
    screen_name: evidence_defect_queue
    purpose:
      - list unreadable, missing, or policy-invalid evidence cases

  - screen_id: FIN-004
    screen_name: policy_block_queue
    purpose:
      - list reports blocked by policy or validation conditions

  - screen_id: FIN-005
    screen_name: erp_publication_queue
    purpose:
      - list publication-ready reports
      - trigger explicit ERP publication request

  - screen_id: FIN-006
    screen_name: erp_failure_queue
    purpose:
      - list ERP failed reports
      - support visible retry and failure investigation

  - screen_id: FIN-007
    screen_name: monthly_close_support
    purpose:
      - show target month processing status
      - view pending, blocked, failed, and completed totals

  - screen_id: FIN-008
    screen_name: export_center
    purpose:
      - export downstream finance review data
      - support audit or handoff use

# ============================================================
# 5. SHARED DETAIL / SUPPORT SCREENS
# ============================================================

shared_support_screens:

  - screen_id: SHR-001
    screen_name: report_state_timeline
    purpose:
      - show draft, approval, finance, ERP, settlement transitions separately

  - screen_id: SHR-002
    screen_name: duplicate_warning_detail
    purpose:
      - explain suspicious duplication basis
      - support user or reviewer judgment

  - screen_id: SHR-003
    screen_name: allocation_detail
    purpose:
      - edit or view project / department allocation data

  - screen_id: SHR-004
    screen_name: notification_center
    purpose:
      - show return, rejection, pending, failure, and reminder notifications

# ============================================================
# 6. PRIMARY NAVIGATION FLOWS
# ============================================================

primary_navigation_flows:

  employee_main_flow:
    - employee_home
    - draft_list
    - new_expense_entry
    - expense_report_detail
    - expense_item_edit
    - receipt_attach
    - submit_confirmation
    - history_list

  employee_candidate_flow:
    - employee_home
    - candidate_inbox
    - new_expense_entry
    - expense_report_detail

  employee_trip_flow:
    - employee_home
    - new_expense_entry
    - business_trip_bundle_entry
    - expense_report_detail
    - receipt_attach
    - submit_confirmation

  employee_advance_flow:
    - employee_home
    - new_expense_entry
    - advance_settlement_entry
    - expense_report_detail
    - submit_confirmation

  employee_card_flow:
    - employee_home
    - new_expense_entry
    - corporate_card_usage_entry
    - expense_report_detail

  approver_flow:
    - approval_queue
    - approval_report_review
    - return_reason_entry or rejection_reason_entry
    - approval_history_view

  finance_flow:
    - finance_review_queue
    - finance_report_review
    - erp_publication_queue
    - erp_failure_queue
    - monthly_close_support

# ============================================================
# 7. STATE VISIBILITY RULE
# ============================================================

state_visibility_rule:
- submit state must be displayed
- approval state must be displayed
- finance readiness state must be displayed where relevant
- ERP publication state must be displayed
- settlement completion state must be displayed where relevant
- these states must not be merged into one ambiguous label

# ============================================================
# 8. DEVICE ADAPTATION RULE
# ============================================================

device_adaptation_rule:

  phone:
    - single-column primary flow
    - bottom or compact navigation allowed
    - optimized for fast capture and correction

  tablet:
    - split view allowed
    - list + detail layout preferred where useful

  pc:
    - dense list, table, and side-by-side review allowed
    - queue operations and finance visibility may be expanded

important_rule:
- layout may differ
- workflow meaning must not differ
- no platform may lose core business capability

# ============================================================
# 9. GLOBALIZATION RULE
# ============================================================

globalization_rule:
- all labels and messages must be localization-ready
- amount must display with currency context
- exchange-related information must be visible where used
- locale presentation must not change stored business facts

# ============================================================
# 10. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This screen map establishes a serious first release:
not a minimum-only reimbursement app,
but a multilingual, multi currency, all-device expense front
with employee usability, approver clarity, finance operability,
PocketSecretary candidate linkage, and explicit ERP publication control.

