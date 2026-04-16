# ============================================================
# EXPENSE INITIAL MASTER CATALOG BUNDLE
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines an initial master-catalog bundle for ExpenseSettlement so that
the design can move from structure-only policy into first usable company-level
catalog shapes, without entering implementation.

design_policy:
- this bundle fixes an initial canonical shape, not final per-company values
- codes are canonical
- localized labels are presentation only
- category / evidence / route / template meanings must remain aligned
- values here are initial recommended defaults and may be tuned later by governed policy

# ============================================================
# 1. INITIAL CATEGORY CATALOG
# ============================================================

initial_category_catalog:

  - expense_category_code: TRANSPORTATION_TRAIN
    category_group_code: transportation
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: false
    advance_settlement_allowed_flag: false
    receipt_required_flag: true
    receipt_multiple_allowed_flag: false
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: medium
    route_policy_hint: standard
    finance_review_sensitivity_level: medium
    template_allowed_flag: true

  - expense_category_code: TRANSPORTATION_TAXI
    category_group_code: transportation
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: false
    advance_settlement_allowed_flag: false
    receipt_required_flag: true
    receipt_multiple_allowed_flag: false
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: high
    route_policy_hint: standard
    finance_review_sensitivity_level: medium
    template_allowed_flag: true

  - expense_category_code: BUSINESS_TRIP_LODGING
    category_group_code: business_trip
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: true
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: true
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: high
    route_policy_hint: travel_sensitive
    finance_review_sensitivity_level: high
    template_allowed_flag: true

  - expense_category_code: BUSINESS_TRIP_MEAL
    category_group_code: business_trip
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: true
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: medium
    route_policy_hint: travel_sensitive
    finance_review_sensitivity_level: medium
    template_allowed_flag: true

  - expense_category_code: BUSINESS_TRIP_MISC
    category_group_code: business_trip
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: true
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: medium
    route_policy_hint: travel_sensitive
    finance_review_sensitivity_level: medium
    template_allowed_flag: true

  - expense_category_code: ENTERTAINMENT_MEAL
    category_group_code: meal_entertainment
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: false
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: true
    project_required_flag: false
    department_required_flag: true
    duplicate_sensitivity_level: high
    route_policy_hint: stricter_review
    finance_review_sensitivity_level: high
    template_allowed_flag: true

  - expense_category_code: OFFICE_SUPPLY
    category_group_code: office_purchase
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: false
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: true
    duplicate_sensitivity_level: medium
    route_policy_hint: standard
    finance_review_sensitivity_level: medium
    template_allowed_flag: true

  - expense_category_code: COMMUNICATION_COST
    category_group_code: communication
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: false
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: true
    duplicate_sensitivity_level: medium
    route_policy_hint: standard
    finance_review_sensitivity_level: medium
    template_allowed_flag: true

  - expense_category_code: TRAINING_FEE
    category_group_code: training_education
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: false
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: true
    duplicate_sensitivity_level: medium
    route_policy_hint: standard
    finance_review_sensitivity_level: medium
    template_allowed_flag: true

  - expense_category_code: ADVANCE_SETTLEMENT
    category_group_code: advance_adjustment
    reimbursement_allowed_flag: false
    corporate_card_allowed_flag: false
    advance_settlement_allowed_flag: true
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: high
    route_policy_hint: advance_sensitive
    finance_review_sensitivity_level: high
    template_allowed_flag: true

  - expense_category_code: CORPORATE_CARD_ADJUSTMENT
    category_group_code: corporate_card_related
    reimbursement_allowed_flag: false
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: false
    receipt_required_flag: true
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: high
    route_policy_hint: card_sensitive
    finance_review_sensitivity_level: high
    template_allowed_flag: true

  - expense_category_code: OTHER_EXPENSE_CONTROLLED
    category_group_code: other_expense
    reimbursement_allowed_flag: true
    corporate_card_allowed_flag: true
    advance_settlement_allowed_flag: false
    receipt_required_flag: false
    receipt_multiple_allowed_flag: true
    unreadable_receipt_blocks_flag: true
    tax_required_flag: false
    project_required_flag: false
    department_required_flag: false
    duplicate_sensitivity_level: medium
    route_policy_hint: controlled_other
    finance_review_sensitivity_level: high
    template_allowed_flag: false

# ============================================================
# 2. INITIAL APPROVAL THRESHOLD BANDS
# ============================================================

initial_approval_threshold_bands:
  threshold_basis: converted_total_amount_in_policy_base_currency

  bands:
    - band_code: ROUTE_BAND_01
      min_inclusive: 0
      max_exclusive: 50000
      route_shape: manager_only
      route_reason_summary: standard_small_amount

    - band_code: ROUTE_BAND_02
      min_inclusive: 50000
      max_exclusive: 200000
      route_shape: manager_plus_department_head
      route_reason_summary: medium_amount_additional_review

    - band_code: ROUTE_BAND_03
      min_inclusive: 200000
      max_exclusive: null
      route_shape: manager_plus_department_head_plus_special_approver
      route_reason_summary: high_amount_stricter_review

notes:
- exact currency basis may be tuned later
- these values are initial recommended defaults

# ============================================================
# 3. INITIAL EVIDENCE MATRIX ROWS
# ============================================================

initial_evidence_matrix_rows:

  - expense_category_code: TRANSPORTATION_TRAIN
    evidence_required_timing: required_at_submit
    accepted_file_policy: standard_receipt_file_policy
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: false
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  - expense_category_code: TRANSPORTATION_TAXI
    evidence_required_timing: required_at_submit
    accepted_file_policy: standard_receipt_file_policy
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: false
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  - expense_category_code: BUSINESS_TRIP_LODGING
    evidence_required_timing: required_at_submit
    accepted_file_policy: standard_receipt_file_policy
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  - expense_category_code: ENTERTAINMENT_MEAL
    evidence_required_timing: required_at_submit
    accepted_file_policy: standard_receipt_file_policy
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  - expense_category_code: TRAINING_FEE
    evidence_required_timing: required_by_finance_review
    accepted_file_policy: standard_receipt_file_policy
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  - expense_category_code: ADVANCE_SETTLEMENT
    evidence_required_timing: required_by_finance_review
    accepted_file_policy: standard_receipt_file_policy
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  - expense_category_code: OTHER_EXPENSE_CONTROLLED
    evidence_required_timing: required_if_threshold_exceeded
    accepted_file_policy: standard_receipt_file_policy
    minimum_attachment_count: 0
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

# ============================================================
# 4. INITIAL TEMPLATE CATALOG
# ============================================================

initial_template_catalog:

  - template_id: TPL_COMMUTER_TRAIN_BASIC
    template_type: personal_template
    template_code: COMMUTER_TRAIN_BASIC
    owner_scope_type: personal
    visibility_scope: owner_only
    category_default_set_json:
      primary_category_code: TRANSPORTATION_TRAIN
    item_default_set_json:
      payment_method: cash_or_personal_card
      payment_type: reimbursement
    is_active: true

  - template_id: TPL_TAXI_QUICK
    template_type: personal_template
    template_code: TAXI_QUICK
    owner_scope_type: personal
    visibility_scope: owner_only
    category_default_set_json:
      primary_category_code: TRANSPORTATION_TAXI
    item_default_set_json:
      payment_type: reimbursement
    is_active: true

  - template_id: TPL_BUSINESS_TRIP_ONE_DAY
    template_type: company_template
    template_code: BUSINESS_TRIP_ONE_DAY
    owner_scope_type: company
    visibility_scope: company
    category_default_set_json:
      categories:
        - BUSINESS_TRIP_MEAL
        - BUSINESS_TRIP_MISC
    item_default_set_json:
      payment_type: reimbursement
    is_active: true

  - template_id: TPL_BUSINESS_TRIP_LODGING
    template_type: company_template
    template_code: BUSINESS_TRIP_LODGING
    owner_scope_type: company
    visibility_scope: company
    category_default_set_json:
      primary_category_code: BUSINESS_TRIP_LODGING
    item_default_set_json:
      payment_type: reimbursement
    is_active: true

  - template_id: TPL_TRAINING_FEE
    template_type: company_template
    template_code: TRAINING_FEE
    owner_scope_type: company
    visibility_scope: company
    category_default_set_json:
      primary_category_code: TRAINING_FEE
    item_default_set_json:
      payment_type: reimbursement
    is_active: true

  - template_id: TPL_ADVANCE_SETTLEMENT
    template_type: guided_template
    template_code: ADVANCE_SETTLEMENT
    owner_scope_type: company
    visibility_scope: company
    category_default_set_json:
      primary_category_code: ADVANCE_SETTLEMENT
    item_default_set_json:
      payment_type: advance_settlement
    is_active: true

  - template_id: TPL_CORPORATE_CARD_MISC
    template_type: corporate_card_template
    template_code: CORPORATE_CARD_MISC
    owner_scope_type: company
    visibility_scope: company
    category_default_set_json:
      primary_category_code: CORPORATE_CARD_ADJUSTMENT
    item_default_set_json:
      payment_type: corporate_card
    is_active: true

# ============================================================
# 5. INITIAL FILE POLICY SHAPE
# ============================================================

initial_file_policy_shape:
  accepted_file_family_candidates:
    - image/jpeg
    - image/png
    - application/pdf

  recommended_initial_limits:
    max_file_count_per_item: 10
    max_file_count_per_report: 50
    max_file_size_mb_per_file: 20

  notes:
    - exact values remain governable later
    - these are initial recommended defaults for design fixation

# ============================================================
# 6. INITIAL REMINDER CADENCE SHAPE
# ============================================================

initial_reminder_cadence_shape:
  unsubmitted_draft:
    cadence: every_3_days
  pending_approval:
    cadence: daily_business_day
  pending_finance_review:
    cadence: daily_business_day
  unresolved_erp_failure:
    cadence: twice_daily_business_day
  month_close_risk:
    cadence: event_driven_plus_daily_near_close

# ============================================================
# 7. INITIAL SETTLEMENT SIGNAL SHAPE
# ============================================================

initial_settlement_signal_shape:
  employee_reimbursement:
    pending_entry_signal: erp_confirmed_or_payment_process_started
    settled_signal: reimbursement_completion_confirmed

  corporate_card_completion:
    pending_entry_signal: erp_confirmed_or_card_resolution_started
    settled_signal: corporate_card_resolution_confirmed

  advance_settlement_completion:
    pending_entry_signal: finance_reconciliation_started
    settled_signal: advance_balance_fully_resolved

# ============================================================
# 8. REMAINING PARAMETER-TUNING OPEN ITEMS
# ============================================================

remaining_parameter_tuning_open_items:
- exact category labels per language
- exact department/project route matrix
- exact duplicate sensitivity definitions
- exact finance reason code catalogs
- exact evidence mismatch tolerance rules
- exact template visibility narrowing by department
- exact settlement confirmation source catalog
- exact export masking matrix

# ============================================================
# 9. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This bundle moves the design from:
- structure-only policy
to:
- first canonical catalog shape

while still preserving later governance tuning for exact values.

