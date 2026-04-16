# ============================================================
# EXPENSE API EXACT PAYLOAD CONTRACT
# ============================================================

status: canonical
layer: integration
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Fixes exact request / response payload contracts for the initial release
of ExpenseSettlement.

contract_policy:
- exact payload first
- additive evolution only
- request and response must be explicit
- approval state and ERP state must remain separated
- multilingual support and multi currency support must remain visible in data design
- iphone / android / pc / tablet must share the same business contract

# ============================================================
# 1. COMMON RESPONSE ENVELOPE
# ============================================================

common_response_envelope:
  success_response:
    json:
      success: true
      data: object
      meta:
        request_id: string
        server_time: string
  error_response:
    json:
      success: false
      error:
        code: string
        message: string
        details: object
      meta:
        request_id: string
        server_time: string

# ============================================================
# 2. EXPENSE REPORT SUMMARY MODEL
# ============================================================

expense_report_summary_model:
  json:
    expense_report_id: string
    company_id: string
    applicant_user_id: string
    title: string
    expense_month: string
    report_currency_code: string
    total_amount: number
    submit_state: string
    approval_state: string
    finance_state: string
    erp_state: string
    settlement_state: string
    receipt_missing_count: integer
    duplicate_warning_count: integer
    created_at: string
    updated_at: string

# ============================================================
# 3. EXPENSE ITEM MODEL
# ============================================================

expense_item_model:
  json:
    expense_item_id: string
    expense_report_id: string
    expense_category_code: string
    usage_date: string
    merchant_name: string
    description: string
    amount: number
    currency_code: string
    exchange_rate: number
    converted_amount: number
    converted_currency_code: string
    payment_method: string
    payment_type: string
    tax_category_code: string
    tax_amount: number
    project_code: string
    department_code: string
    duplicate_check_state: string
    evidence_required: boolean
    note: string
    created_at: string
    updated_at: string

# ============================================================
# 4. RECEIPT MODEL
# ============================================================

receipt_model:
  json:
    expense_receipt_id: string
    expense_item_id: string
    file_name: string
    mime_type: string
    storage_object_ref: string
    sha256: string
    capture_source: string
    evidence_state: string
    ocr_state: string
    uploaded_at: string
    verified_at: string

# ============================================================
# 5. CREATE REPORT
# ============================================================

endpoint:
  method: POST
  path: /api/expense/reports

request_body:
  json:
    company_id: string
    applicant_user_id: string
    title: string
    expense_month: string
    report_currency_code: string
    source_type: string
    source_candidate_id: string|null

success_response:
  json:
    success: true
    data:
      expense_report:
        expense_report_id: string
        company_id: string
        applicant_user_id: string
        title: string
        expense_month: string
        report_currency_code: string
        total_amount: 0
        submit_state: draft
        approval_state: none
        finance_state: none
        erp_state: none
        settlement_state: none
        created_at: string
        updated_at: string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 6. LIST REPORTS
# ============================================================

endpoint:
  method: GET
  path: /api/expense/reports

query_parameters:
  - applicant_user_id
  - month
  - submit_state
  - approval_state
  - finance_state
  - erp_state
  - page
  - page_size

success_response:
  json:
    success: true
    data:
      reports:
        - expense_report_id: string
          company_id: string
          applicant_user_id: string
          title: string
          expense_month: string
          report_currency_code: string
          total_amount: number
          submit_state: string
          approval_state: string
          finance_state: string
          erp_state: string
          settlement_state: string
          receipt_missing_count: integer
          duplicate_warning_count: integer
          created_at: string
          updated_at: string
      pagination:
        page: integer
        page_size: integer
        total_count: integer
    meta:
      request_id: string
      server_time: string

# ============================================================
# 7. GET REPORT DETAIL
# ============================================================

endpoint:
  method: GET
  path: /api/expense/reports/{expense_report_id}

success_response:
  json:
    success: true
    data:
      expense_report:
        expense_report_id: string
        company_id: string
        applicant_user_id: string
        title: string
        expense_month: string
        report_currency_code: string
        total_amount: number
        submit_state: string
        approval_state: string
        finance_state: string
        erp_state: string
        settlement_state: string
        created_at: string
        updated_at: string
      items:
        - expense_item_id: string
          expense_report_id: string
          expense_category_code: string
          usage_date: string
          merchant_name: string
          description: string
          amount: number
          currency_code: string
          exchange_rate: number
          converted_amount: number
          converted_currency_code: string
          payment_method: string
          payment_type: string
          tax_category_code: string
          tax_amount: number
          project_code: string
          department_code: string
          duplicate_check_state: string
          evidence_required: boolean
          note: string
          created_at: string
          updated_at: string
      receipts:
        - expense_receipt_id: string
          expense_item_id: string
          file_name: string
          mime_type: string
          storage_object_ref: string
          sha256: string
          capture_source: string
          evidence_state: string
          ocr_state: string
          uploaded_at: string
          verified_at: string
      approval_history:
        - approval_record_id: string
          approval_step: integer
          actor_user_id: string
          action_type: string
          action_reason: string
          action_at: string
      validations:
        missing_required_fields:
          - string
        warnings:
          - string
        blocking_errors:
          - string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 8. ADD OR UPDATE ITEM
# ============================================================

endpoint:
  method: PUT
  path: /api/expense/reports/{expense_report_id}/items/{expense_item_id}

request_body:
  json:
    expense_category_code: string
    usage_date: string
    merchant_name: string
    description: string
    amount: number
    currency_code: string
    exchange_rate: number
    converted_amount: number
    converted_currency_code: string
    payment_method: string
    payment_type: string
    tax_category_code: string
    tax_amount: number
    project_code: string
    department_code: string
    note: string

success_response:
  json:
    success: true
    data:
      expense_item:
        expense_item_id: string
        expense_report_id: string
        expense_category_code: string
        usage_date: string
        merchant_name: string
        description: string
        amount: number
        currency_code: string
        exchange_rate: number
        converted_amount: number
        converted_currency_code: string
        payment_method: string
        payment_type: string
        tax_category_code: string
        tax_amount: number
        project_code: string
        department_code: string
        duplicate_check_state: string
        evidence_required: boolean
        note: string
        created_at: string
        updated_at: string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 9. ATTACH RECEIPT
# ============================================================

endpoint:
  method: POST
  path: /api/expense/items/{expense_item_id}/receipts

request_body:
  json:
    file_name: string
    mime_type: string
    storage_object_ref: string
    sha256: string
    capture_source: string

success_response:
  json:
    success: true
    data:
      receipt:
        expense_receipt_id: string
        expense_item_id: string
        file_name: string
        mime_type: string
        storage_object_ref: string
        sha256: string
        capture_source: string
        evidence_state: attached
        ocr_state: none
        uploaded_at: string
        verified_at: null
    meta:
      request_id: string
      server_time: string

# ============================================================
# 10. SUBMIT REPORT
# ============================================================

endpoint:
  method: POST
  path: /api/expense/reports/{expense_report_id}/submit

request_body:
  json:
    submit_actor_user_id: string
    submit_comment: string

success_response:
  json:
    success: true
    data:
      expense_report_id: string
      submit_state: submitted
      approval_state: pending
      finance_state: none
      erp_state: none
      settlement_state: none
      submitted_at: string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 11. APPROVAL ACTION
# ============================================================

endpoint:
  method: POST
  path: /api/expense/reports/{expense_report_id}/approval-action

request_body:
  json:
    actor_user_id: string
    action_type: string
    action_reason: string
    next_approval_step: integer|null

allowed_action_type:
  - approve
  - return
  - reject

success_response:
  json:
    success: true
    data:
      expense_report_id: string
      approval_state: string
      latest_action:
        action_type: string
        actor_user_id: string
        action_reason: string
        action_at: string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 12. FINANCE REVIEW ACTION
# ============================================================

endpoint:
  method: POST
  path: /api/expense/reports/{expense_report_id}/finance-action

request_body:
  json:
    actor_user_id: string
    action_type: string
    action_reason: string

allowed_action_type:
  - mark_ready_for_erp
  - mark_policy_blocked
  - mark_evidence_defect

success_response:
  json:
    success: true
    data:
      expense_report_id: string
      finance_state: string
      latest_action:
        action_type: string
        actor_user_id: string
        action_reason: string
        action_at: string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 13. ERP PUBLICATION REQUEST
# ============================================================

endpoint:
  method: POST
  path: /api/expense/reports/{expense_report_id}/erp-publications

request_body:
  json:
    actor_user_id: string
    idempotency_key: string
    publication_comment: string

success_response:
  json:
    success: true
    data:
      request_id: string
      expense_report_id: string
      erp_state: pending
      publication_requested_at: string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 14. ERP PUBLICATION RESULT REGISTRATION
# ============================================================

endpoint:
  method: POST
  path: /api/expense/reports/{expense_report_id}/erp-publications/result

request_body:
  json:
    request_id: string
    result_status: string
    erp_document_ref: string
    error_code: string
    error_message: string
    received_at: string

allowed_result_status:
  - confirmed
  - failed

success_response:
  json:
    success: true
    data:
      expense_report_id: string
      erp_state: string
      erp_document_ref: string
      latest_result:
        result_status: string
        error_code: string
        error_message: string
        received_at: string
    meta:
      request_id: string
      server_time: string

# ============================================================
# 15. CANDIDATE INBOX LIST
# ============================================================

endpoint:
  method: GET
  path: /api/expense/candidates

query_parameters:
  - applicant_user_id
  - page
  - page_size

success_response:
  json:
    success: true
    data:
      candidates:
        - candidate_id: string
          candidate_type: string
          candidate_title: string
          suggested_usage_date: string
          suggested_amount: number
          suggested_currency_code: string
          source_system: string
          source_ref_id: string
          created_at: string
      pagination:
        page: integer
        page_size: integer
        total_count: integer
    meta:
      request_id: string
      server_time: string

# ============================================================
# 16. CONVERT CANDIDATE TO REPORT
# ============================================================

endpoint:
  method: POST
  path: /api/expense/candidates/{candidate_id}/convert

request_body:
  json:
    actor_user_id: string
    target_mode: string

allowed_target_mode:
  - create_new_report
  - append_to_existing_report

success_response:
  json:
    success: true
    data:
      candidate_id: string
      expense_report_id: string
      created_expense_item_id: string
      conversion_status: converted
    meta:
      request_id: string
      server_time: string

# ============================================================
# 17. ERROR CODE BASELINE
# ============================================================

error_code_baseline:
- EXPENSE_REPORT_NOT_FOUND
- EXPENSE_ITEM_NOT_FOUND
- EXPENSE_RECEIPT_NOT_FOUND
- EXPENSE_INVALID_STATE_TRANSITION
- EXPENSE_VALIDATION_BLOCKED
- EXPENSE_APPROVAL_NOT_ALLOWED
- EXPENSE_FINANCE_ACTION_NOT_ALLOWED
- EXPENSE_ERP_PUBLICATION_NOT_ALLOWED
- EXPENSE_DUPLICATE_SUSPECTED
- EXPENSE_EVIDENCE_REQUIRED
- EXPENSE_PERMISSION_DENIED
- EXPENSE_IDEMPOTENCY_CONFLICT

# ============================================================
# 18. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
The initial release contract explicitly separates:
- report and item
- evidence and validation
- approval and finance action
- finance readiness and ERP publication
- ERP request and ERP result
- candidate intake and formal expense creation

