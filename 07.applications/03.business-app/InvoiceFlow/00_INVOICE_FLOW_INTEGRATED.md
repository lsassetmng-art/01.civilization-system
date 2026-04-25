
<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/000_INVOICE_FLOW_INDEX.md -->
# ============================================================
# INVOICE FLOW INDEX
# ============================================================

status: canonical
layer: index
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the master navigation index for InvoiceFlow.

# ============================================================
# 0. PRIMARY ENTRY POINTS
# ============================================================

primary_entry_points:
- 000_INVOICE_FLOW_OVERVIEW.md
- 000_INVOICE_FLOW_INDEX.md
- 00_INVOICE_FLOW_INTEGRATED.md

recommended_first_read:
1. 000_INVOICE_FLOW_OVERVIEW.md
2. 010.constitution/010_INVOICE_FLOW_CONSTITUTION.md
3. 020.architecture/020_INVOICE_FLOW_ARCHITECTURE.md
4. 030.model/030_INVOICE_FLOW_MODEL.md
5. 050.flow/050_INVOICE_FLOW_FLOW.md
6. 060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md
7. 090.interface/090_INVOICE_FLOW_INTERFACE.md
8. 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
9. 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
10. 00_INVOICE_FLOW_INTEGRATED.md

recommended_implementation_read:
1. 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
2. 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
3. 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
4. 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
5. 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
6. 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
7. 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
8. 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md
9. 120.implementation/120120_PHASE_BREAKDOWN.md

# ============================================================
# 1. DESIGN COMPLETION BUNDLES
# ============================================================

completion_bundles:

- bundle_code: IF-BUNDLE-01
  bundle_name: Foundation And Positioning
  status: fixed
  files:
  - 000_INVOICE_FLOW_OVERVIEW.md
  - 010.constitution/010_INVOICE_FLOW_CONSTITUTION.md
  - 020.architecture/020160_COMPETITIVE_POSITION_ARCHITECTURE.md
  - 080.policy/080150_COMPETITIVE_DIFFERENTIATION_POLICY.md

- bundle_code: IF-BUNDLE-02
  bundle_name: Core Architecture And Model
  status: fixed
  files:
  - 020.architecture/020_INVOICE_FLOW_ARCHITECTURE.md
  - 030.model/030_INVOICE_FLOW_MODEL.md
  - 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
  - 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
  - 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
  - 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
  - 030.model/030310_COLLECTION_ACTION_PHYSICAL_MODEL.md
  - 030.model/030320_BANK_TRANSACTION_IMPORT_PHYSICAL_MODEL.md
  - 030.model/030330_ERP_REFLECTION_PHYSICAL_MODEL.md
  - 030.model/030340_CUSTOMER_OUTSTANDING_SUMMARY_PHYSICAL_MODEL.md

- bundle_code: IF-BUNDLE-03
  bundle_name: Interface And Operator Experience
  status: fixed
  files:
  - 090.interface/090_INVOICE_FLOW_INTERFACE.md
  - 090.interface/090110_SCREEN_LIST_INTERFACE.md
  - 090.interface/090120_DASHBOARD_INTERFACE.md
  - 090.interface/090130_INVOICE_DETAIL_INTERFACE.md
  - 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
  - 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
  - 090.interface/090160_RECEIPT_INTERFACE.md
  - 090.interface/090170_COMPETITIVE_INTERFACE_REQUIREMENTS.md

- bundle_code: IF-BUNDLE-04
  bundle_name: Flow And Status
  status: fixed
  files:
  - 050.flow/050_INVOICE_FLOW_FLOW.md
  - 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
  - 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
  - 050.flow/050190_COLLECTION_STATUS_TRANSITION_FLOW.md
  - 050.flow/050200_RECEIPT_STATUS_TRANSITION_FLOW.md
  - 050.flow/050210_ERP_REFLECTION_STATUS_TRANSITION_FLOW.md

- bundle_code: IF-BUNDLE-05
  bundle_name: Permission And Security
  status: fixed
  files:
  - 100.security/100110_ROLE_DEFINITION_SECURITY.md
  - 100.security/100120_SCREEN_PERMISSION_MATRIX_SECURITY.md
  - 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
  - 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

- bundle_code: IF-BUNDLE-06
  bundle_name: API Exact Payload
  status: fixed
  files:
  - 060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md
  - 060.integration/060160_GET_INVOICE_LIST_EXACT_PAYLOAD.md
  - 060.integration/060170_GET_INVOICE_DETAIL_EXACT_PAYLOAD.md
  - 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
  - 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
  - 060.integration/060200_CONFIRM_BANK_MATCH_EXACT_PAYLOAD.md
  - 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
  - 060.integration/060220_RECORD_COLLECTION_ACTION_EXACT_PAYLOAD.md
  - 060.integration/060230_REQUEST_ERP_PAYMENT_REFLECTION_EXACT_PAYLOAD.md
  - 060.integration/060240_GENERATE_INVOICE_PDF_EXACT_PAYLOAD.md
  - 060.integration/060250_REQUEST_INVOICE_SEND_EXACT_PAYLOAD.md
  - 060.integration/060260_GET_BANK_MATCH_CANDIDATE_LIST_EXACT_PAYLOAD.md
  - 060.integration/060270_REISSUE_RECEIPT_EXACT_PAYLOAD.md
  - 060.integration/060280_GET_ERP_REFLECTION_RESULT_EXACT_PAYLOAD.md
  - 060.integration/060290_SAVE_INVOICE_LIST_FILTER_EXACT_PAYLOAD.md

- bundle_code: IF-BUNDLE-07
  bundle_name: Implementation Planning
  status: fixed
  files:
  - 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
  - 120.implementation/120120_PHASE_BREAKDOWN.md
  - 120.implementation/120130_MVP_DEFINITION.md
  - 120.implementation/120140_PHASE_EXIT_CRITERIA.md
  - 120.implementation/120150_RISKS_AND_FRONTLOADED_DECISIONS.md

- bundle_code: IF-BUNDLE-08
  bundle_name: Integrated Reading Bundle
  status: fixed
  files:
  - 00_INVOICE_FLOW_INTEGRATED.md

# ============================================================
# 2. ROOT FILES
# ============================================================

- 000_INVOICE_FLOW_OVERVIEW.md
- 000_INVOICE_FLOW_INDEX.md
- 00_INVOICE_FLOW_INTEGRATED.md

# ============================================================
# 3. CONSTITUTION
# ============================================================

- 010.constitution/010_INVOICE_FLOW_CONSTITUTION_OVERVIEW.md
- 010.constitution/010_INVOICE_FLOW_CONSTITUTION_INDEX.md
- 010.constitution/010_INVOICE_FLOW_CONSTITUTION.md

# ============================================================
# 4. ARCHITECTURE
# ============================================================

- 020.architecture/020_INVOICE_FLOW_ARCHITECTURE_OVERVIEW.md
- 020.architecture/020_INVOICE_FLOW_ARCHITECTURE_INDEX.md
- 020.architecture/020_INVOICE_FLOW_ARCHITECTURE.md
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 020.architecture/020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md
- 020.architecture/020130_COLLECTION_MANAGEMENT_ARCHITECTURE.md
- 020.architecture/020140_RECEIPT_ISSUANCE_ARCHITECTURE.md
- 020.architecture/020150_SHARED_ERP_REFLECTION_ARCHITECTURE.md
- 020.architecture/020160_COMPETITIVE_POSITION_ARCHITECTURE.md

# ============================================================
# 5. MODEL
# ============================================================

- 030.model/030_INVOICE_FLOW_MODEL_OVERVIEW.md
- 030.model/030_INVOICE_FLOW_MODEL_INDEX.md
- 030.model/030_INVOICE_FLOW_MODEL.md
- 030.model/030100_INVOICE_CASE_MODEL.md
- 030.model/030110_INVOICE_LINE_MODEL.md
- 030.model/030120_INVOICE_DELIVERY_REQUEST_MODEL.md
- 030.model/030130_PAYMENT_SCHEDULE_MODEL.md
- 030.model/030140_PAYMENT_CONFIRMATION_MODEL.md
- 030.model/030150_BANK_TRANSACTION_IMPORT_MODEL.md
- 030.model/030160_SIMPLE_RECONCILIATION_MODEL.md
- 030.model/030170_RECEIPT_ISSUE_MODEL.md
- 030.model/030180_COLLECTION_ACTION_MODEL.md
- 030.model/030190_CUSTOMER_OUTSTANDING_SUMMARY_MODEL.md
- 030.model/030200_ERP_REFLECTION_REQUEST_MODEL.md
- 030.model/030210_ERP_REFLECTION_RESULT_MODEL.md
- 030.model/030220_AUDIT_LOG_MODEL.md
- 030.model/030230_STATUS_CODE_MODEL.md
- 030.model/030240_ERROR_CODE_MODEL.md
- 030.model/030250_UI_STATE_CODE_MODEL.md
- 030.model/030260_FIELD_SCHEMA_MODEL.md
- 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
- 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 030.model/030310_COLLECTION_ACTION_PHYSICAL_MODEL.md
- 030.model/030320_BANK_TRANSACTION_IMPORT_PHYSICAL_MODEL.md
- 030.model/030330_ERP_REFLECTION_PHYSICAL_MODEL.md
- 030.model/030340_CUSTOMER_OUTSTANDING_SUMMARY_PHYSICAL_MODEL.md

# ============================================================
# 6. RUNTIME
# ============================================================

- 040.runtime/040_INVOICE_FLOW_RUNTIME_OVERVIEW.md
- 040.runtime/040_INVOICE_FLOW_RUNTIME_INDEX.md
- 040.runtime/040_INVOICE_FLOW_RUNTIME.md
- 040.runtime/040110_FRONT_INVOICE_RUNTIME.md
- 040.runtime/040120_ERP_MASTER_INVOICE_RUNTIME.md
- 040.runtime/040130_BANK_MATCHING_RUNTIME.md
- 040.runtime/040140_MANUAL_PAYMENT_CONFIRMATION_RUNTIME.md
- 040.runtime/040150_COLLECTION_PRIORITY_RUNTIME.md
- 040.runtime/040160_RECEIPT_ISSUANCE_RUNTIME.md

# ============================================================
# 7. FLOW
# ============================================================

- 050.flow/050_INVOICE_FLOW_FLOW_OVERVIEW.md
- 050.flow/050_INVOICE_FLOW_FLOW_INDEX.md
- 050.flow/050_INVOICE_FLOW_FLOW.md
- 050.flow/050110_FRONT_INVOICE_CREATION_FLOW.md
- 050.flow/050120_ERP_MASTER_INVOICE_REFERENCE_FLOW.md
- 050.flow/050130_BANK_PAYMENT_CONFIRMATION_FLOW.md
- 050.flow/050140_MANUAL_PAYMENT_CONFIRMATION_FLOW.md
- 050.flow/050150_COLLECTION_FOLLOW_UP_FLOW.md
- 050.flow/050160_RECEIPT_ISSUANCE_FLOW.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 050.flow/050190_COLLECTION_STATUS_TRANSITION_FLOW.md
- 050.flow/050200_RECEIPT_STATUS_TRANSITION_FLOW.md
- 050.flow/050210_ERP_REFLECTION_STATUS_TRANSITION_FLOW.md

# ============================================================
# 8. INTEGRATION
# ============================================================

- 060.integration/060_INVOICE_FLOW_INTEGRATION_OVERVIEW.md
- 060.integration/060_INVOICE_FLOW_INTEGRATION_INDEX.md
- 060.integration/060_INVOICE_FLOW_INTEGRATION.md
- 060.integration/060110_BANK_ACCOUNT_LINK_INTEGRATION_CONTRACT.md
- 060.integration/060120_RECEIPT_PDF_INTEGRATION_CONTRACT.md
- 060.integration/060130_SHARED_ERP_REFLECTION_INTEGRATION_CONTRACT.md
- 060.integration/060140_NOTIFICATION_INTEGRATION_CONTRACT.md
- 060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md
- 060.integration/060160_GET_INVOICE_LIST_EXACT_PAYLOAD.md
- 060.integration/060170_GET_INVOICE_DETAIL_EXACT_PAYLOAD.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 060.integration/060200_CONFIRM_BANK_MATCH_EXACT_PAYLOAD.md
- 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 060.integration/060220_RECORD_COLLECTION_ACTION_EXACT_PAYLOAD.md
- 060.integration/060230_REQUEST_ERP_PAYMENT_REFLECTION_EXACT_PAYLOAD.md
- 060.integration/060240_GENERATE_INVOICE_PDF_EXACT_PAYLOAD.md
- 060.integration/060250_REQUEST_INVOICE_SEND_EXACT_PAYLOAD.md
- 060.integration/060260_GET_BANK_MATCH_CANDIDATE_LIST_EXACT_PAYLOAD.md
- 060.integration/060270_REISSUE_RECEIPT_EXACT_PAYLOAD.md
- 060.integration/060280_GET_ERP_REFLECTION_RESULT_EXACT_PAYLOAD.md
- 060.integration/060290_SAVE_INVOICE_LIST_FILTER_EXACT_PAYLOAD.md

# ============================================================
# 9. OPERATIONS
# ============================================================

- 070.operations/070_INVOICE_FLOW_OPERATIONS_OVERVIEW.md
- 070.operations/070_INVOICE_FLOW_OPERATIONS_INDEX.md
- 070.operations/070_INVOICE_FLOW_OPERATIONS.md
- 070.operations/070110_COLLECTION_OPERATIONS_STANDARD.md
- 070.operations/070120_RECEIPT_REISSUE_OPERATIONS_STANDARD.md
- 070.operations/070130_BANK_MATCH_EXCEPTION_OPERATIONS_STANDARD.md

# ============================================================
# 10. POLICY
# ============================================================

- 080.policy/080_INVOICE_FLOW_POLICY_OVERVIEW.md
- 080.policy/080_INVOICE_FLOW_POLICY_INDEX.md
- 080.policy/080_INVOICE_FLOW_POLICY.md
- 080.policy/080110_INVOICE_AUTHORITY_POLICY.md
- 080.policy/080120_RECEIPT_POLICY.md
- 080.policy/080130_COLLECTION_PRIORITY_POLICY.md
- 080.policy/080140_FAIL_CLOSED_POLICY.md
- 080.policy/080150_COMPETITIVE_DIFFERENTIATION_POLICY.md

# ============================================================
# 11. INTERFACE
# ============================================================

- 090.interface/090_INVOICE_FLOW_INTERFACE_OVERVIEW.md
- 090.interface/090_INVOICE_FLOW_INTERFACE_INDEX.md
- 090.interface/090_INVOICE_FLOW_INTERFACE.md
- 090.interface/090110_SCREEN_LIST_INTERFACE.md
- 090.interface/090120_DASHBOARD_INTERFACE.md
- 090.interface/090130_INVOICE_DETAIL_INTERFACE.md
- 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
- 090.interface/090160_RECEIPT_INTERFACE.md
- 090.interface/090170_COMPETITIVE_INTERFACE_REQUIREMENTS.md

# ============================================================
# 12. SECURITY
# ============================================================

- 100.security/100_INVOICE_FLOW_SECURITY_OVERVIEW.md
- 100.security/100_INVOICE_FLOW_SECURITY_INDEX.md
- 100.security/100_INVOICE_FLOW_SECURITY.md
- 100.security/100110_ROLE_DEFINITION_SECURITY.md
- 100.security/100120_SCREEN_PERMISSION_MATRIX_SECURITY.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 13. INFRASTRUCTURE
# ============================================================

- 110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE_OVERVIEW.md
- 110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE_INDEX.md
- 110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE.md

# ============================================================
# 14. IMPLEMENTATION
# ============================================================

- 120.implementation/120_INVOICE_FLOW_IMPLEMENTATION_OVERVIEW.md
- 120.implementation/120_INVOICE_FLOW_IMPLEMENTATION_INDEX.md
- 120.implementation/120_INVOICE_FLOW_IMPLEMENTATION.md
- 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
- 120.implementation/120120_PHASE_BREAKDOWN.md
- 120.implementation/120130_MVP_DEFINITION.md
- 120.implementation/120140_PHASE_EXIT_CRITERIA.md
- 120.implementation/120150_RISKS_AND_FRONTLOADED_DECISIONS.md

# ============================================================
# 15. DEVELOPMENT
# ============================================================

- 130.development/130_INVOICE_FLOW_DEVELOPMENT_OVERVIEW.md
- 130.development/130_INVOICE_FLOW_DEVELOPMENT_INDEX.md
- 130.development/130_INVOICE_FLOW_DEVELOPMENT.md

# ============================================================
# 16. META
# ============================================================

- 900.meta/900_INVOICE_FLOW_META_OVERVIEW.md
- 900.meta/900_INVOICE_FLOW_META_INDEX.md
- 900.meta/900010_COMPETITOR_COMPARISON_NOTE.md
- 070.operations/070140_BANK_IMPORT_OPERATIONS_STANDARD.md
- 070.operations/070150_NOTIFICATION_OPERATIONS_STANDARD.md
- 070.operations/070160_AUDIT_EVENT_LEDGER.md
- 080.policy/080160_DOCUMENT_NUMBERING_POLICY.md
- 080.policy/080170_DOCUMENT_TEMPLATE_POLICY.md
- 080.policy/080180_SIMPLE_RECONCILIATION_POLICY.md
- 080.policy/080190_DATA_RETENTION_AND_CORRECTION_POLICY.md
- 080.policy/080200_NOTIFICATION_POLICY.md
- 110.infrastructure/110110_NON_FUNCTIONAL_REQUIREMENTS.md
- 110.infrastructure/110120_MULTI_DEVICE_LAYOUT_REQUIREMENTS.md
- 060.integration/060300_ERROR_HANDLING_AND_RESPONSE_POLICY.md
- 900.meta/900020_OPEN_ISSUE_LEDGER.md
- 900.meta/900030_DECISION_REQUIRED_LEDGER.md
- 900.meta/900040_DESIGN_COMPLETION_CHECKLIST.md
- 900.meta/900050_DESIGN_CLOSURE_NOTE.md
- 900.meta/900060_REVIEW_REQUEST_NOTE.md
- 900.meta/900070_IMPLEMENTATION_HANDOFF_NOTE.md
- 900.meta/900080_OUT_OF_SCOPE_LEDGER.md
- 900.meta/900090_FINAL_REVIEW_CHECKPOINTS.md
- 900.meta/900100_DESIGN_COMPLETION_DECLARATION.md
- 900.meta/900110_MASTER_RESTART_NOTE.md
- 900.meta/900120_FINAL_DESIGN_SUMMARY.md
- 900.meta/900130_READING_ORDER_NOTE.md
- 900.meta/900140_IMPLEMENTATION_START_PACKAGE_NOTE.md
- 900.meta/900150_FORMAL_COMPLETION_NOTE.md
- 900.meta/900160_NEXT_STAGE_OPTIONS_NOTE.md
- 120.implementation/120160_IMPLEMENTATION_TASK_BREAKDOWN_OVERVIEW.md
- 120.implementation/120170_PHASE_01_TASK_BREAKDOWN.md
- 120.implementation/120180_PHASE_02_TASK_BREAKDOWN.md
- 120.implementation/120190_PHASE_03_TASK_BREAKDOWN.md
- 120.implementation/120200_PHASE_04_TASK_BREAKDOWN.md
- 120.implementation/120210_PHASE_05_TASK_BREAKDOWN.md
- 120.implementation/120220_PHASE_06_TASK_BREAKDOWN.md
- 120.implementation/120230_PHASE_07_TASK_BREAKDOWN.md
- 120.implementation/120240_PHASE_08_TASK_BREAKDOWN.md
- 120.implementation/120250_BACKEND_FRONTEND_SPLIT_NOTE.md
- 120.implementation/120260_TEST_STRATEGY_NOTE.md
- 120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120310_PHASE_05_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120320_PHASE_06_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120330_PHASE_07_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120340_PHASE_08_IMPLEMENTATION_INSTRUCTION.md
- 900.meta/900170_IMPLEMENTATION_READY_NOTE.md
- 900.meta/900180_IMPLEMENTATION_HANDOFF_PACKAGE.md
- 080.policy/080210_APPROVED_BUSINESS_DECISIONS_POLICY.md
- 080.policy/080220_DOCUMENT_FOOTER_AND_NUMBERING_POLICY.md
- 080.policy/080230_CUSTOMER_MASTER_AND_SEND_POLICY.md
- 080.policy/080240_POST_SEND_CORRECTION_AND_REISSUE_POLICY.md
- 080.policy/080250_LANGUAGE_AND_CURRENCY_DISPLAY_POLICY.md
- 900.meta/900190_APPROVED_DECISION_REFLECTION_NOTE.md
- 080.policy/080260_FINAL_WORDING_AND_FORMAT_POLICY.md
- 080.policy/080270_FINAL_DISPLAY_RULES_POLICY.md
- 900.meta/900200_FINAL_DECISION_CLOSURE_NOTE.md

- 010.constitution/011110_INVOICEFLOW_COMPETITIVE_POSITIONING_NOTE.md

- 020.architecture/021120_INVOICEFLOW_BILLING_COLLECTION_CONTROL_ARCHITECTURE.md

- 020.architecture/021130_INVOICEFLOW_SETTLEMENT_EXCEPTION_RECEIVABLE_ARCHITECTURE.md

- 030.model/030510_INVOICEFLOW_BILLING_EXECUTION_TIMELINE_MODEL.md

- 060.integration/060290_INVOICEFLOW_BILLING_COCKPIT_PAYLOAD.md

- 060.integration/060300_INVOICEFLOW_SETTLEMENT_EXCEPTION_REVIEW_PAYLOAD.md

- 090.interface/090330_INVOICEFLOW_BILLING_COCKPIT_INTERFACE.md

- 120.implementation/120300_INVOICEFLOW_BILLING_CONTROL_IMPLEMENTATION_GUIDE.md

- 900.meta/900410_INVOICEFLOW_20260416_DIFF_AUDIT_NOTE.md

- 020.architecture/021140_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md

- 060.integration/060320_INVOICEFLOW_PHASE_A_API_STARTER.md

- 060.integration/060330_INVOICEFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md

- 120.implementation/120310_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120.implementation/120320_INVOICEFLOW_PHASE_A_STUB_FILE_PLAN.md

- 120.implementation/120330_INVOICEFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120.implementation/120340_INVOICEFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120.implementation/120350_INVOICEFLOW_PHASE_A_SLICE_COMMAND_PACKS.md

- 120.implementation/120360_INVOICEFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120.implementation/120370_INVOICEFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120.implementation/120380_INVOICEFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

- 900.meta/900420_INVOICEFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 900.meta/900430_INVOICEFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 900.meta/900440_INVOICEFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900.meta/900450_INVOICEFLOW_NEXT_APP_TRANSITION_HANDOFF.md

- 900.meta/900460_INVOICEFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900.meta/900470_INVOICEFLOW_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/000_INVOICE_FLOW_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/000_INVOICE_FLOW_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW OVERVIEW
# ============================================================

status: canonical
layer: overview
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the top-level overview for InvoiceFlow.

summary:
InvoiceFlow is a billing, payment confirmation,
collection management, receipt issuance,
and ERP-connected front application.

# ============================================================
# 0. GLOBAL PRODUCT REQUIREMENTS
# ============================================================

global_product_requirements:
- multilingual support is mandatory
- multicurrency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

global_product_interpretation:
- all user-facing screens must be designed for multilingual expansion
- all monetary models must preserve currency identity
- invoice PDF and receipt PDF must be designed with multilingual and multicurrency considerations
- UI and operations must work across smartphone, tablet, and PC form factors
- no design may assume Android-only or mobile-only operation

primary_position:
InvoiceFlow is not the ERP itself.
Invoice master authority belongs to ERP when ERP is used.
InvoiceFlow provides a field-usable and business-usable front
for invoice PDF issuance,
delivery request,
payment confirmation,
collection tracking,
priority collection support,
and ERP reflection.

invoice_truth_model:
- ERP is the source of truth for ERP-master invoices.
- InvoiceFlow local/front invoices are valid only as non-ERP-master invoices.
- A front-created invoice cannot be promoted into ERP invoice master.
- If ERP-master invoice is required, ERP must create it through its own business flow.

payment_confirmation_model:
- bank-linked confirmation is supported
- manual confirmation is supported
- both can produce receipt issuance records
- simple reconciliation is supported before formal ERP-side reconciliation

collection_model:
- overdue invoices are managed inside InvoiceFlow
- collection due date is managed
- dunning history is managed
- priority collection flag is managed
- collection priority is visualized
- customer outstanding balance is visible

structure:
010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development
900.meta

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/000_INVOICE_FLOW_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/010_INVOICE_FLOW_CONSTITUTION.md -->
# ============================================================
# INVOICE FLOW CONSTITUTION
# ============================================================

status: canonical
layer: constitution
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of InvoiceFlow.

constitutional_principles:
- InvoiceFlow is a front application, not the ERP itself.
- ERP is the invoice master authority when ERP is used.
- A front-created invoice shall not be treated as ERP invoice master.
- Front-created invoices may still be operationally valid outside ERP-master scope.
- Payment confirmation may originate from bank-linked confirmation or manual confirmation.
- Receipt issuance is allowed from confirmed payment records.
- Collection management is first-class functionality inside InvoiceFlow.
- ERP reflection must respect shared BusinessOS boundary capability.
- Fail closed is mandatory when authority, amount, or target invoice identity is unclear.
- Multilingual support is mandatory from the design root.
- Multicurrency support is mandatory from the design root.
- iPhone, Android, PC, and tablet support are mandatory from the design root.

design_root_rules:
- user-facing text must be localizable
- currency must never be inferred only from locale
- device support must assume responsive or adaptive design
- screen definitions must not be phone-only
- PDF output must consider multilingual text expansion and currency display rules

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/010_INVOICE_FLOW_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/010_INVOICE_FLOW_CONSTITUTION_INDEX.md -->
# ============================================================
# INVOICE FLOW CONSTITUTION INDEX
# ============================================================

status: canonical
layer: constitution
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 010_INVOICE_FLOW_CONSTITUTION_OVERVIEW.md
- 010_INVOICE_FLOW_CONSTITUTION_INDEX.md
- 010_INVOICE_FLOW_CONSTITUTION.md

- 011110_INVOICEFLOW_COMPETITIVE_POSITIONING_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/010_INVOICE_FLOW_CONSTITUTION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/010_INVOICE_FLOW_CONSTITUTION_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the constitutional overview for InvoiceFlow.

summary:
InvoiceFlow shall support invoice issuance,
payment confirmation,
collection management,
receipt issuance,
and ERP reflection
without violating invoice authority boundaries.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/010_INVOICE_FLOW_CONSTITUTION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/011110_INVOICEFLOW_COMPETITIVE_POSITIONING_NOTE.md -->
# ============================================================
# INVOICEFLOW COMPETITIVE POSITIONING NOTE
# ============================================================

status: canonical
layer: constitution
system: applications
application: InvoiceFlow
directory: 010.constitution
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: competitive-positioning-note

purpose:
Clarifies the differentiator that should be made explicit in the
current InvoiceFlow design without rewriting its existing core.

positioning_summary:
- InvoiceFlow is not only an invoice document generator.
- Its durable value is billing control across invoice issuance,
  approval, receivable visibility, settlement tracking, exception handling,
  and downstream finance readiness.
- The differentiator is not simple invoice formatting, but lifecycle control
  that keeps billing and collection risk operationally visible.

preserved_core:
- invoice and billing operation identity
- existing business operation role
- existing ERP and financial flow relation
- existing approval and operational separation direction
- existing platform direction

differentiator_to_make_explicit:
- billing lifecycle control
- receivable and settlement visibility
- approval and exception traceability
- downstream finance readiness visibility

competitive_contrast:
- not merely a PDF invoice generator
- not merely a print form
- not merely a receivable list
- positioned as a billing execution control layer that connects
  approval, issue readiness, settlement visibility, exception review,
  and downstream finance movement

non_goals_of_this_note:
- no full constitutional rewrite
- no implementation start
- no destructive scope replacement
- no framework decision

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/010.constitution/011110_INVOICEFLOW_COMPETITIVE_POSITIONING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md -->
# ============================================================
# INVOICE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

invoice_categories:
- FRONT_LOCAL
- ERP_MASTER

boundary_rules:
- FRONT_LOCAL invoices can produce invoice PDF.
- FRONT_LOCAL invoices cannot become ERP invoice master.
- ERP_MASTER invoices are mastered by ERP.
- InvoiceFlow may display and operate around ERP_MASTER invoices.
- ERP reflection eligibility depends on invoice category and policy.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md -->
# ============================================================
# PAYMENT CONFIRMATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

confirmation_routes:
- BANK_LINKED
- MANUAL

design_rules:
- bank-linked confirmation uses imported transaction evidence
- manual confirmation is allowed for hand-delivery and equivalent cases
- both routes produce payment confirmation records
- both routes may issue receipts when policy allows
- simple reconciliation exists before formal ERP-side reconciliation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020130_COLLECTION_MANAGEMENT_ARCHITECTURE.md -->
# ============================================================
# COLLECTION MANAGEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

collection_scope:
- overdue tracking
- collection due date
- dunning history
- priority collection flag
- customer outstanding summary
- collection priority visualization

design_principle:
Collection management is not a separate application.
It is an integrated part of InvoiceFlow.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020130_COLLECTION_MANAGEMENT_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020140_RECEIPT_ISSUANCE_ARCHITECTURE.md -->
# ============================================================
# RECEIPT ISSUANCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- receipt issuance requires confirmed payment
- confirmed payment may originate from bank-linked confirmation or manual confirmation
- receipt issuance is tracked as its own object
- receipt PDF issuance is application-supported
- receipt authority follows invoice/payment policy scope

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020140_RECEIPT_ISSUANCE_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020150_SHARED_ERP_REFLECTION_ARCHITECTURE.md -->
# ============================================================
# SHARED ERP REFLECTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- ERP reflection uses shared BusinessOS capability
- direct ERP bypass is forbidden
- front-created invoices are not reflected as ERP invoice master
- ERP-master invoices may receive payment-result reflection
- reflection result must return to InvoiceFlow for visibility and audit

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020150_SHARED_ERP_REFLECTION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020160_COMPETITIVE_POSITION_ARCHITECTURE.md -->
# ============================================================
# COMPETITIVE POSITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes the competitive architectural position of InvoiceFlow.

# ============================================================
# 1. POSITION
# ============================================================

position_statement:
InvoiceFlow is positioned as a strong operational front
between pure invoice tools and deep accounting/ERP systems.

design_position:
- not just an invoice PDF tool
- not just a payment reconciliation specialist
- not just a collection-only tool
- not an ERP replacement
- an integrated front for invoice, payment confirmation,
  collection management, receipt issuance, and ERP-aware operation

# ============================================================
# 2. WINNING SHAPE
# ============================================================

winning_shape:
- keep invoice/payment/collection in one app
- respect ERP master authority instead of competing with ERP
- support real-world payment confirmation routes
- make collection work visible and actionable
- reduce split operation across multiple products

# ============================================================
# 3. DELIBERATE NON-GOALS
# ============================================================

deliberate_non_goals:
- becoming a full accounting suite
- becoming a formal ERP invoice master
- becoming a deep settlement-specialist platform only
- pushing collection into a separate application
- designing only for desktop back-office operation

# ============================================================
# 4. CORE DIFFERENTIATORS
# ============================================================

core_differentiators:
- explicit distinction between FRONT_LOCAL and ERP_MASTER
- invoice authority visibility on every critical screen
- integrated collection management inside the same app
- bank-linked and manual confirmation as first-class routes
- receipt issuance from both confirmation routes
- strong multi-device front usability
- multilingual and multicurrency design from root

# ============================================================
# 5. COMPETITIVE ARCHITECTURE RULES
# ============================================================

competitive_rules:
- architecture must favor operational continuity from invoice to collection
- architecture must not hide ERP non-eligibility
- architecture must not treat collection as optional add-on behavior
- architecture must keep receipt issuance close to payment confirmation
- architecture must support lightweight daily operation on phone, tablet, and PC

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020160_COMPETITIVE_POSITION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020_INVOICE_FLOW_ARCHITECTURE.md -->
# ============================================================
# INVOICE FLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main architecture of InvoiceFlow.

# ============================================================
# 1. ARCHITECTURAL POSITION
# ============================================================

architectural_position:
- InvoiceFlow is a field/front operational application.
- ERP remains the invoice master authority when ERP is used.
- InvoiceFlow covers invoice PDF issuance, send request,
  payment confirmation, collection management,
  receipt issuance, and ERP reflection support.
- InvoiceFlow integrates collection management inside the same app.
- InvoiceFlow supports multilingual, multicurrency,
  iphone, android, pc, and tablet operation.

# ============================================================
# 2. CORE MODULES
# ============================================================

main_components:
- invoice front module
- invoice PDF generation module
- invoice delivery request module
- ERP-master invoice reference module
- bank-linked payment confirmation module
- manual payment confirmation module
- simple reconciliation module
- collection management module
- receipt issuance module
- shared ERP reflection adapter
- audit and notification module
- localization and currency handling module
- responsive multi-device interface layer

# ============================================================
# 3. INVOICE CATEGORY BOUNDARY
# ============================================================

invoice_categories:
- FRONT_LOCAL
- ERP_MASTER

invoice_category_meaning:
FRONT_LOCAL:
  - created inside InvoiceFlow
  - valid for local/front operation
  - invoice PDF can be generated
  - send request can be managed
  - payment can be confirmed
  - receipt can be issued
  - collection can be managed
  - cannot become ERP invoice master

ERP_MASTER:
  - created and mastered by ERP
  - referenced by InvoiceFlow
  - payment can be confirmed in InvoiceFlow
  - collection can be managed in InvoiceFlow
  - payment result can be reflected through shared ERP capability

# ============================================================
# 4. RESPONSIBILITY SPLIT
# ============================================================

invoiceflow_responsibility:
- create front/local invoice
- generate invoice PDF
- manage invoice sending request
- display invoice detail and invoice status
- import and review bank transaction candidates
- allow manual payment confirmation
- perform simple reconciliation
- issue receipt PDF
- manage overdue and collection actions
- show collection priority
- submit payment-result reflection through shared ERP boundary
- keep audit trail

shared_businessos_responsibility:
- company context attachment
- shared reflection routing
- reflection validation
- notification bridge
- audit/event support
- cross-app policy support

erp_responsibility:
- official invoice master
- official order-to-shipment-to-invoice chain
- formal accounting impact
- formal accounts receivable truth
- final ERP-side reconciliation/settlement logic

# ============================================================
# 5. MODULE RELATION
# ============================================================

module_relation:
- invoice front module creates or displays invoice cases
- payment confirmation module updates payment-related facts
- simple reconciliation module links invoice and payment facts
- collection management module acts on unpaid/overdue cases
- receipt issuance module depends on confirmed payment
- shared ERP reflection adapter only handles allowed reflection paths
- interface layer sits above all user-facing modules
- audit/notification layer observes all critical changes

# ============================================================
# 6. ARCHITECTURAL RULES
# ============================================================

core_design_rules:
- front-created invoices and ERP-master invoices are distinct categories
- payment confirmation supports bank-linked and manual routes
- collection management is part of the same application scope
- receipts are derived from confirmed payment records
- ERP reflection is bounded by invoice authority and shared capability rules
- multilingual support is built in as a first-class architectural concern
- multicurrency handling is built in as a first-class architectural concern
- iphone, android, pc, and tablet support are built in as a first-class interface concern
- fail closed is mandatory when invoice authority, amount identity,
  or reflection eligibility is unclear

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020_INVOICE_FLOW_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020_INVOICE_FLOW_ARCHITECTURE_INDEX.md -->
# ============================================================
# INVOICE FLOW ARCHITECTURE INDEX
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 020_INVOICE_FLOW_ARCHITECTURE_OVERVIEW.md
- 020_INVOICE_FLOW_ARCHITECTURE_INDEX.md
- 020_INVOICE_FLOW_ARCHITECTURE.md
- 020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md
- 020130_COLLECTION_MANAGEMENT_ARCHITECTURE.md
- 020140_RECEIPT_ISSUANCE_ARCHITECTURE.md
- 020150_SHARED_ERP_REFLECTION_ARCHITECTURE.md
- 020160_COMPETITIVE_POSITION_ARCHITECTURE.md

- 021120_INVOICEFLOW_BILLING_COLLECTION_CONTROL_ARCHITECTURE.md

- 021130_INVOICEFLOW_SETTLEMENT_EXCEPTION_RECEIVABLE_ARCHITECTURE.md

- 021140_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020_INVOICE_FLOW_ARCHITECTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020_INVOICE_FLOW_ARCHITECTURE_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the architecture overview for InvoiceFlow.

summary:
InvoiceFlow is structured around invoice handling,
payment confirmation,
collection operations,
receipt issuance,
and shared ERP reflection capability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/020_INVOICE_FLOW_ARCHITECTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/021120_INVOICEFLOW_BILLING_COLLECTION_CONTROL_ARCHITECTURE.md -->
# ============================================================
# INVOICEFLOW BILLING COLLECTION CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-collection-control-architecture

purpose:
Makes billing lifecycle and collection control explicit in the
current InvoiceFlow architecture.

architecture_intent:
- billing work must be visible not only as invoices, but as execution movement
- issuance, approval, receivable tracking, settlement, and downstream finance
  handoff must remain explicit
- billing readiness and blocker visibility must be queryable without
  reconstructing everything from raw invoice detail only

flow_layers:
- invoice intake:
  - billing draft creation
  - line or charge composition
  - invoice issue preparation
  - invoice issuance
- billing control:
  - approval requirement detection
  - receivable tracking
  - settlement confirmation
  - exception routing
- operational review:
  - billing cockpit review
  - settlement exception visibility
  - overdue receivable visibility
  - downstream finance readiness
- control action:
  - approve
  - hold
  - escalate
  - confirm settlement
- closure:
  - issued
  - partially settled
  - settled
  - cancelled
  - handed off downstream

key_separations:
- raw invoice detail is not the same as billing readiness
- approval history is not the same as active hold state
- receivable tracking is not the same as downstream finance completion
- cockpit review is not the same as detailed line editing screen

recommended_runtime_objects:
- billing_execution_signal
- settlement_exception_review_item
- downstream_finance_readiness_item
- billing_cockpit_summary

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/021120_INVOICEFLOW_BILLING_COLLECTION_CONTROL_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/021130_INVOICEFLOW_SETTLEMENT_EXCEPTION_RECEIVABLE_ARCHITECTURE.md -->
# ============================================================
# INVOICEFLOW SETTLEMENT EXCEPTION RECEIVABLE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: settlement-exception-receivable-architecture

purpose:
Defines the relationship between approval state, receivable visibility,
settlement readiness, and exception handling in InvoiceFlow.

core_principle:
- financial slippage often appears first through unresolved approval,
  overdue receivable, settlement blocker, or downstream finance blocker
  before it appears as final accounting failure.

architecture_rules:
- approval requirement must be represented explicitly
- settlement blockers must be reviewable as first-class financial objects
- downstream finance blockers must survive beyond one screen or one session
- unresolved exceptions must be visible in the same review flow as billing health

exception_categories:
- approval pending
- overdue receivable
- settlement blocker
- downstream finance blocker
- cancellation risk

visibility_outputs:
- billing cockpit
- settlement exception review screen
- overdue receivable panel
- finance readiness overview

cross_module_relation:
- invoice detail editing feeds document and charge detail
- lifecycle layer summarizes billing checkpoints
- approval layer captures governance state
- receivable layer surfaces payment visibility
- downstream layer surfaces finance or ledger readiness

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/021130_INVOICEFLOW_SETTLEMENT_EXCEPTION_RECEIVABLE_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/021140_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md -->
# ============================================================
# INVOICEFLOW PHASE A BILLING EXECUTION TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-billing-execution-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
billing execution visibility, settlement exception review,
and billing cockpit assembly.

principles:
- additive only
- preserve existing InvoiceFlow core
- keep raw invoice editing separate from execution readiness rows
- keep approval and settlement exception review separate from raw invoice history
- no SQL execution in this document

phase_a_target_capabilities:
- persist billing execution timeline rows for cockpit and review
- persist settlement and finance-blocker review rows for financial visibility
- support billing cockpit query without reconstructing everything from raw invoice state
- support approval pending and downstream finance review slices

proposed_additive_tables:
- business.invoiceflow_billing_execution_timeline_item
- business.invoiceflow_settlement_exception_review_item
- business.invoiceflow_billing_cockpit_snapshot

table_business_invoiceflow_billing_execution_timeline_item:
  role:
    - stores normalized billing execution timeline rows
  recommended_columns:
    - billing_execution_timeline_item_id uuid pk
    - invoice_id uuid not null
    - related_approval_id uuid null
    - related_settlement_blocker_id uuid null
    - related_finance_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - priority_code text null
    - due_at timestamptz null
    - approved_at timestamptz null
    - issued_at timestamptz null
    - settled_at timestamptz null
    - handed_off_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_invoiceflow_settlement_exception_review_item:
  role:
    - stores reviewable settlement and downstream finance blocker rows
  recommended_columns:
    - settlement_exception_review_item_id uuid pk
    - invoice_id uuid not null
    - related_approval_id uuid null
    - related_settlement_blocker_id uuid null
    - related_finance_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - execution_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - due_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_invoiceflow_billing_cockpit_snapshot:
  role:
    - stores generated billing cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - billing_cockpit_snapshot_id uuid pk
    - invoice_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- billing_execution_timeline_item:
  - idx on invoice_id, execution_state_code, due_at
  - idx on invoice_id, related_approval_id
  - idx on invoice_id, related_settlement_blocker_id
- settlement_exception_review_item:
  - idx on invoice_id, approval_required
  - idx on invoice_id, exception_present
  - idx on invoice_id, resolved
- billing_cockpit_snapshot:
  - idx on invoice_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no payment gateway implementation here
- no accounting posting execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/020.architecture/021140_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030100_INVOICE_CASE_MODEL.md -->
# ============================================================
# INVOICE CASE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- invoice_case_id
- company_id
- customer_id
- invoice_origin_type
- invoice_authority_type
- erp_link_eligibility
- invoice_number_local
- erp_invoice_number
- title
- language_code
- currency_code
- exchange_rate_snapshot
- subtotal_amount
- tax_amount
- total_amount
- invoice_date
- payment_due_date
- invoice_status_code
- collection_status_code
- priority_collection_flag
- overdue_days
- collection_due_date
- customer_outstanding_balance_snapshot
- pdf_document_id
- created_at
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030100_INVOICE_CASE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030110_INVOICE_LINE_MODEL.md -->
# ============================================================
# INVOICE LINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- invoice_line_id
- invoice_case_id
- line_no
- item_name
- quantity
- unit_price
- tax_code
- line_amount
- remarks

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030110_INVOICE_LINE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030120_INVOICE_DELIVERY_REQUEST_MODEL.md -->
# ============================================================
# INVOICE DELIVERY REQUEST MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- invoice_delivery_request_id
- invoice_case_id
- delivery_channel_code
- requested_by
- requested_at
- sent_at
- recipient_snapshot
- delivery_status_code

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030120_INVOICE_DELIVERY_REQUEST_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030130_PAYMENT_SCHEDULE_MODEL.md -->
# ============================================================
# PAYMENT SCHEDULE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- payment_schedule_id
- invoice_case_id
- scheduled_payment_date
- scheduled_amount
- payment_method_code
- installment_no
- memo

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030130_PAYMENT_SCHEDULE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030140_PAYMENT_CONFIRMATION_MODEL.md -->
# ============================================================
# PAYMENT CONFIRMATION MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- payment_confirmation_id
- invoice_case_id
- confirmation_source_type
- confirmation_status_code
- confirmed_payment_date
- confirmed_amount
- fee_amount
- difference_amount
- bank_account_id
- bank_transaction_id
- manual_receipt_note
- evidence_file_id
- confirmed_by
- confirmed_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030140_PAYMENT_CONFIRMATION_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030150_BANK_TRANSACTION_IMPORT_MODEL.md -->
# ============================================================
# BANK TRANSACTION IMPORT MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- bank_transaction_import_id
- bank_account_id
- transaction_date
- transaction_name
- transaction_amount
- raw_reference
- imported_at
- match_status_code

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030150_BANK_TRANSACTION_IMPORT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030160_SIMPLE_RECONCILIATION_MODEL.md -->
# ============================================================
# SIMPLE RECONCILIATION MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- simple_reconciliation_id
- invoice_case_id
- payment_confirmation_id
- matched_amount
- difference_amount
- reconciliation_status_code
- reviewed_by
- reviewed_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030160_SIMPLE_RECONCILIATION_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030170_RECEIPT_ISSUE_MODEL.md -->
# ============================================================
# RECEIPT ISSUE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- receipt_issue_id
- invoice_case_id
- payment_confirmation_id
- receipt_number
- issue_type_code
- language_code
- currency_code
- pdf_document_id
- receipt_status_code
- issued_by
- issued_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030170_RECEIPT_ISSUE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030180_COLLECTION_ACTION_MODEL.md -->
# ============================================================
# COLLECTION ACTION MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- collection_action_id
- invoice_case_id
- action_type_code
- action_date
- action_owner_user_id
- action_note
- promised_payment_date
- next_action_date
- contact_method_code
- response_summary
- escalation_required_flag

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030180_COLLECTION_ACTION_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030190_CUSTOMER_OUTSTANDING_SUMMARY_MODEL.md -->
# ============================================================
# CUSTOMER OUTSTANDING SUMMARY MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- customer_outstanding_summary_id
- company_id
- customer_id
- total_outstanding_amount
- overdue_outstanding_amount
- oldest_overdue_days
- priority_rank_code
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030190_CUSTOMER_OUTSTANDING_SUMMARY_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030200_ERP_REFLECTION_REQUEST_MODEL.md -->
# ============================================================
# ERP REFLECTION REQUEST MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- erp_reflection_request_id
- source_application_code
- source_record_id
- reflection_type_code
- request_payload_version
- request_status_code
- requested_by
- requested_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030200_ERP_REFLECTION_REQUEST_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030210_ERP_REFLECTION_RESULT_MODEL.md -->
# ============================================================
# ERP REFLECTION RESULT MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- erp_reflection_result_id
- erp_reflection_request_id
- result_status_code
- external_document_no
- error_code
- error_message
- applied_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030210_ERP_REFLECTION_RESULT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030220_AUDIT_LOG_MODEL.md -->
# ============================================================
# AUDIT LOG MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- audit_log_id
- actor_user_id
- action_code
- target_type
- target_id
- before_json
- after_json
- occurred_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030220_AUDIT_LOG_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030230_STATUS_CODE_MODEL.md -->
# ============================================================
# STATUS CODE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

invoice_status_codes:
- DRAFT
- PDF_READY
- SENT_REQUESTED
- SENT
- PAYMENT_WAITING
- PARTIALLY_PAID
- PAID
- OVERDUE
- CLOSED
- CANCELLED

payment_confirmation_status_codes:
- UNCONFIRMED
- BANK_MATCH_CANDIDATE
- BANK_MATCH_CONFIRMED
- MANUAL_CONFIRMED
- PARTIAL_CONFIRMED
- DIFFERENCE_FOUND
- RECEIPT_ISSUED
- CLOSED

collection_status_codes:
- NONE
- MONITORING
- FOLLOW_UP_REQUIRED
- COLLECTION_SCHEDULED
- CONTACTED
- PROMISED
- ESCALATED
- RESOLVED

erp_reflection_status_codes:
- ERP_NOT_APPLICABLE
- ERP_MASTER_REFERENCE
- ERP_PAYMENT_SYNC_READY
- ERP_PAYMENT_SYNCED
- ERP_SYNC_FAILED

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030230_STATUS_CODE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030240_ERROR_CODE_MODEL.md -->
# ============================================================
# ERROR CODE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

error_codes:
- INVOICE_REQUIRED_FIELD_MISSING
- INVOICE_AMOUNT_INVALID
- INVOICE_AUTHORITY_INVALID
- INVOICE_ERP_REFLECTION_NOT_ALLOWED
- PAYMENT_CONFIRMATION_CONFLICT
- BANK_MATCH_NOT_CONFIDENT
- RECEIPT_ISSUANCE_NOT_ALLOWED
- COLLECTION_TARGET_INVALID
- ERP_REFLECTION_FAILED

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030240_ERROR_CODE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030250_UI_STATE_CODE_MODEL.md -->
# ============================================================
# UI STATE CODE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

ui_states:
- dashboard
- invoice_list
- invoice_detail
- payment_confirmation
- collection_dashboard
- collection_detail
- receipt_detail
- settings

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030250_UI_STATE_CODE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030260_FIELD_SCHEMA_MODEL.md -->
# ============================================================
# FIELD SCHEMA MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

key_schema_notes:
- invoice_origin_type distinguishes FRONT_LOCAL and ERP_MASTER
- erp_link_eligibility governs ERP reflection possibility
- confirmation_source_type distinguishes BANK_LINKED and MANUAL
- receipt issuance depends on confirmed payment

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030260_FIELD_SCHEMA_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md -->
# ============================================================
# DB PHYSICAL OVERVIEW MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines physical-table level guidance for InvoiceFlow persistence.

physical_design_principles:
- all tables are company-scoped unless explicitly global
- uuid primary key is standard
- created_at and updated_at are standard where mutable state exists
- status code columns are explicit strings, not implicit booleans
- authority boundary must be stored explicitly
- monetary columns must always pair with currency_code where needed
- auditability is mandatory for state-changing records
- soft-delete is not assumed by default unless explicitly added later

recommended_tables:
- invoice_case
- invoice_line
- invoice_delivery_request
- payment_schedule
- payment_confirmation
- bank_transaction_import
- simple_reconciliation
- receipt_issue
- collection_action
- customer_outstanding_summary
- erp_reflection_request
- erp_reflection_result
- audit_log

key_notation:
- pk = primary key
- fk = foreign key
- uq = unique key
- ix = non-unique index

cross_table_rules:
- FRONT_LOCAL and ERP_MASTER meaning must be stored on invoice_case
- receipt_issue must link to payment_confirmation
- collection_action must link to invoice_case
- ERP reflection tables must not imply invoice-master creation for FRONT_LOCAL

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md -->
# ============================================================
# INVOICE CASE PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: invoice_case

columns:
- invoice_case_id: uuid pk
- company_id: uuid not null
- customer_id: uuid not null
- invoice_origin_type: varchar(32) not null
- invoice_authority_type: varchar(32) not null
- erp_link_eligibility: varchar(32) not null
- invoice_number_local: varchar(128) null
- erp_invoice_number: varchar(128) null
- title: varchar(255) not null
- language_code: varchar(32) not null
- currency_code: varchar(16) not null
- exchange_rate_snapshot: numeric(18,6) null
- invoice_date: date not null
- payment_due_date: date not null
- subtotal_amount: numeric(18,2) not null
- tax_amount: numeric(18,2) not null
- total_amount: numeric(18,2) not null
- invoice_status_code: varchar(32) not null
- collection_status_code: varchar(32) not null
- priority_collection_flag: boolean not null default false
- overdue_days: integer not null default 0
- collection_due_date: date null
- customer_outstanding_balance_snapshot: numeric(18,2) null
- pdf_document_id: uuid null
- created_by: uuid not null
- updated_by: uuid not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check invoice_origin_type in (FRONT_LOCAL, ERP_MASTER)
- check invoice_authority_type in (FRONT_LOCAL, ERP_MASTER)
- check subtotal_amount >= 0
- check tax_amount >= 0
- check total_amount >= 0
- check payment_due_date >= invoice_date
- check overdue_days >= 0
- FRONT_LOCAL rows must not require erp_invoice_number
- ERP_MASTER rows should allow erp_invoice_number

unique_keys:
- uq_invoice_case_company_invoice_number_local:
  - company_id
  - invoice_number_local

indexes:
- ix_invoice_case_company_status:
  - company_id
  - invoice_status_code
- ix_invoice_case_company_collection_status:
  - company_id
  - collection_status_code
- ix_invoice_case_company_due_date:
  - company_id
  - payment_due_date
- ix_invoice_case_company_customer:
  - company_id
  - customer_id
- ix_invoice_case_company_priority_flag:
  - company_id
  - priority_collection_flag

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md -->
# ============================================================
# PAYMENT CONFIRMATION PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: payment_confirmation

columns:
- payment_confirmation_id: uuid pk
- company_id: uuid not null
- invoice_case_id: uuid fk not null
- confirmation_source_type: varchar(32) not null
- confirmation_status_code: varchar(32) not null
- confirmed_payment_date: date not null
- confirmed_amount: numeric(18,2) not null
- fee_amount: numeric(18,2) not null default 0
- difference_amount: numeric(18,2) not null default 0
- bank_account_id: uuid null
- bank_transaction_id: uuid null
- manual_receipt_note: text null
- evidence_file_id: uuid null
- confirmed_by: uuid not null
- confirmed_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check confirmation_source_type in (BANK_LINKED, MANUAL)
- check confirmed_amount >= 0
- check fee_amount >= 0
- BANK_LINKED should reference bank_transaction_id
- MANUAL may omit bank_transaction_id

indexes:
- ix_payment_confirmation_company_invoice:
  - company_id
  - invoice_case_id
- ix_payment_confirmation_company_status:
  - company_id
  - confirmation_status_code
- ix_payment_confirmation_company_date:
  - company_id
  - confirmed_payment_date
- ix_payment_confirmation_company_bank_tx:
  - company_id
  - bank_transaction_id

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md -->
# ============================================================
# RECEIPT ISSUE PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: receipt_issue

columns:
- receipt_issue_id: uuid pk
- company_id: uuid not null
- invoice_case_id: uuid fk not null
- payment_confirmation_id: uuid fk not null
- prior_receipt_issue_id: uuid null
- receipt_number: varchar(128) not null
- issue_type_code: varchar(32) not null
- language_code: varchar(32) not null
- currency_code: varchar(16) not null
- pdf_document_id: uuid null
- receipt_status_code: varchar(32) not null
- reissue_reason_code: varchar(32) null
- reissue_reason_text: text null
- issued_by: uuid not null
- issued_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check receipt_status_code in (NOT_ISSUED, ISSUE_READY, ISSUED, REISSUED, VOID)
- reissue rows should preserve prior_receipt_issue_id
- receipt_number must be unique within company scope

unique_keys:
- uq_receipt_issue_company_receipt_number:
  - company_id
  - receipt_number

indexes:
- ix_receipt_issue_company_invoice:
  - company_id
  - invoice_case_id
- ix_receipt_issue_company_payment_confirmation:
  - company_id
  - payment_confirmation_id
- ix_receipt_issue_company_status:
  - company_id
  - receipt_status_code

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030310_COLLECTION_ACTION_PHYSICAL_MODEL.md -->
# ============================================================
# COLLECTION ACTION PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: collection_action

columns:
- collection_action_id: uuid pk
- company_id: uuid not null
- invoice_case_id: uuid fk not null
- action_type_code: varchar(32) not null
- action_date: date not null
- action_owner_user_id: uuid not null
- action_note: text null
- promised_payment_date: date null
- next_action_date: date null
- contact_method_code: varchar(32) null
- response_summary: text null
- escalation_required_flag: boolean not null default false
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- action_date is required
- next_action_date may be null
- promised_payment_date may be null
- escalation_required_flag default false

indexes:
- ix_collection_action_company_invoice:
  - company_id
  - invoice_case_id
- ix_collection_action_company_action_date:
  - company_id
  - action_date
- ix_collection_action_company_next_action_date:
  - company_id
  - next_action_date

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030310_COLLECTION_ACTION_PHYSICAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030320_BANK_TRANSACTION_IMPORT_PHYSICAL_MODEL.md -->
# ============================================================
# BANK TRANSACTION IMPORT PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: bank_transaction_import

columns:
- bank_transaction_id: uuid pk
- company_id: uuid not null
- bank_account_id: uuid not null
- transaction_date: date not null
- transaction_name: varchar(255) not null
- transaction_amount: numeric(18,2) not null
- currency_code: varchar(16) not null
- raw_reference: text null
- external_transaction_key: varchar(255) null
- match_status_code: varchar(32) not null
- candidate_invoice_case_id: uuid null
- candidate_confidence: numeric(6,5) null
- imported_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check transaction_amount >= 0
- check candidate_confidence >= 0
- check candidate_confidence <= 1

unique_keys:
- uq_bank_transaction_import_company_external_transaction_key:
  - company_id
  - external_transaction_key

indexes:
- ix_bank_transaction_import_company_account_date:
  - company_id
  - bank_account_id
  - transaction_date
- ix_bank_transaction_import_company_match_status:
  - company_id
  - match_status_code
- ix_bank_transaction_import_company_candidate_invoice:
  - company_id
  - candidate_invoice_case_id

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030320_BANK_TRANSACTION_IMPORT_PHYSICAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030330_ERP_REFLECTION_PHYSICAL_MODEL.md -->
# ============================================================
# ERP REFLECTION PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_names:
- erp_reflection_request
- erp_reflection_result

erp_reflection_request_columns:
- erp_reflection_request_id: uuid pk
- company_id: uuid not null
- source_application_code: varchar(64) not null
- source_record_id: uuid not null
- invoice_case_id: uuid fk not null
- payment_confirmation_id: uuid null
- reflection_type_code: varchar(32) not null
- request_payload_version: varchar(32) not null
- request_status_code: varchar(32) not null
- requested_by: uuid not null
- requested_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

erp_reflection_result_columns:
- erp_reflection_result_id: uuid pk
- company_id: uuid not null
- erp_reflection_request_id: uuid fk not null
- result_status_code: varchar(32) not null
- external_document_no: varchar(128) null
- error_code: varchar(128) null
- error_message: text null
- applied_at: timestamptz null
- created_at: timestamptz not null

constraints:
- FRONT_LOCAL invoice must not be used for ERP-master creation semantics
- result row must belong to existing request row
- request_status_code and result_status_code must be explicit strings

indexes:
- ix_erp_reflection_request_company_invoice:
  - company_id
  - invoice_case_id
- ix_erp_reflection_request_company_status:
  - company_id
  - request_status_code
- ix_erp_reflection_result_company_request:
  - company_id
  - erp_reflection_request_id
- ix_erp_reflection_result_company_status:
  - company_id
  - result_status_code

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030330_ERP_REFLECTION_PHYSICAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030340_CUSTOMER_OUTSTANDING_SUMMARY_PHYSICAL_MODEL.md -->
# ============================================================
# CUSTOMER OUTSTANDING SUMMARY PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: customer_outstanding_summary

shape_note:
- may be implemented as table or materialized summary view
- design intent is customer-level unpaid visibility

columns:
- customer_outstanding_summary_id: uuid pk
- company_id: uuid not null
- customer_id: uuid not null
- currency_code: varchar(16) not null
- total_outstanding_amount: numeric(18,2) not null
- overdue_outstanding_amount: numeric(18,2) not null
- oldest_overdue_days: integer not null default 0
- priority_rank_code: varchar(32) not null
- updated_at: timestamptz not null

constraints:
- check total_outstanding_amount >= 0
- check overdue_outstanding_amount >= 0
- check oldest_overdue_days >= 0

unique_keys:
- uq_customer_outstanding_summary_company_customer_currency:
  - company_id
  - customer_id
  - currency_code

indexes:
- ix_customer_outstanding_summary_company_priority:
  - company_id
  - priority_rank_code
- ix_customer_outstanding_summary_company_overdue_amount:
  - company_id
  - overdue_outstanding_amount
- ix_customer_outstanding_summary_company_total_amount:
  - company_id
  - total_outstanding_amount

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030340_CUSTOMER_OUTSTANDING_SUMMARY_PHYSICAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030510_INVOICEFLOW_BILLING_EXECUTION_TIMELINE_MODEL.md -->
# ============================================================
# INVOICEFLOW BILLING EXECUTION TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-execution-timeline-model

purpose:
Defines the logical model for a unified billing execution timeline.

core_entity:
- billing_execution_timeline_item

recommended_fields:
- billingExecutionTimelineItemId
- invoiceId
- relatedApprovalId
- relatedSettlementBlockerId
- relatedFinanceBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- priorityCode
- dueAt
- approvedAt
- issuedAt
- settledAt
- handedOffAt
- exceptionPresent
- ownerUserId
- approvalRequired
- sourceModuleCode
- createdAt
- updatedAt

state_meaning:
- draft
- pending_approval
- approved
- issued
- overdue
- blocked_for_settlement
- partially_settled
- settled
- handed_off
- cancelled

model_use_cases:
- billing cockpit assembly
- settlement exception review
- approval review
- downstream finance readiness visibility
- billing trend visibility

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030510_INVOICEFLOW_BILLING_EXECUTION_TIMELINE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030_INVOICE_FLOW_MODEL.md -->
# ============================================================
# INVOICE FLOW MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main domain model for InvoiceFlow.

# ============================================================
# 1. PRIMARY OBJECTS
# ============================================================

primary_objects:
- invoice_case
- invoice_line
- invoice_delivery_request
- payment_schedule
- payment_confirmation
- bank_transaction_import
- simple_reconciliation
- receipt_issue
- collection_action
- customer_outstanding_summary
- erp_reflection_request
- erp_reflection_result
- audit_log

# ============================================================
# 2. MODEL OVERVIEW
# ============================================================

invoice_case:
  role:
    Main invoice unit handled by the application.
  important_axes:
    - invoice_origin_type
    - invoice_authority_type
    - erp_link_eligibility
    - language_code
    - currency_code
    - invoice_status_code
    - collection_status_code

invoice_line:
  role:
    Line-level charge details under invoice_case.

invoice_delivery_request:
  role:
    Tracks delivery/send request of invoice PDF or invoice notice.

payment_schedule:
  role:
    Represents expected payment timing and amount.

payment_confirmation:
  role:
    Represents actual payment confirmation fact.
  important_axes:
    - confirmation_source_type
    - confirmation_status_code
    - confirmed_amount
    - evidence linkage

bank_transaction_import:
  role:
    Imported bank-side transaction fact used for candidate matching.

simple_reconciliation:
  role:
    Lightweight front-side invoice/payment alignment.
  limitation:
    Not the formal ERP settlement master.

receipt_issue:
  role:
    Tracks issuance of receipt after confirmed payment.

collection_action:
  role:
    Tracks dunning/follow-up/collection history and next action planning.

customer_outstanding_summary:
  role:
    Customer-level unpaid summary for collection priority visibility.

erp_reflection_request:
  role:
    Request sent across shared ERP reflection boundary.

erp_reflection_result:
  role:
    Reflection result returned from shared ERP reflection boundary.

audit_log:
  role:
    Critical action trace record.

# ============================================================
# 3. KEY DOMAIN RULES
# ============================================================

domain_rules:
- invoice_case must carry invoice authority meaning.
- currency_code is mandatory for monetary handling.
- language_code is mandatory for localized document handling.
- payment_confirmation must declare source type.
- receipt_issue must link to confirmed payment.
- collection_action is first-class and not optional by design.
- simple_reconciliation does not replace ERP-side formal truth.
- ERP reflection request must obey eligibility rules.

# ============================================================
# 4. STATUS CONCEPTS
# ============================================================

invoice_status_codes:
- DRAFT
- PDF_READY
- SENT_REQUESTED
- SENT
- PAYMENT_WAITING
- PARTIALLY_PAID
- PAID
- OVERDUE
- CLOSED
- CANCELLED

payment_confirmation_status_codes:
- UNCONFIRMED
- BANK_MATCH_CANDIDATE
- BANK_MATCH_CONFIRMED
- MANUAL_CONFIRMED
- PARTIAL_CONFIRMED
- DIFFERENCE_FOUND
- RECEIPT_ISSUED
- CLOSED

collection_status_codes:
- NONE
- MONITORING
- FOLLOW_UP_REQUIRED
- COLLECTION_SCHEDULED
- CONTACTED
- PROMISED
- ESCALATED
- RESOLVED

erp_reflection_status_codes:
- ERP_NOT_APPLICABLE
- ERP_MASTER_REFERENCE
- ERP_PAYMENT_SYNC_READY
- ERP_PAYMENT_SYNCED
- ERP_SYNC_FAILED

# ============================================================
# 5. MULTILINGUAL / MULTICURRENCY MODEL RULES
# ============================================================

global_model_rules:
- no invoice record may omit currency identity
- no document output may assume single language
- exchange_rate_snapshot may exist where cross-currency display is needed
- displayed symbols must not replace explicit currency code handling

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030_INVOICE_FLOW_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030_INVOICE_FLOW_MODEL_INDEX.md -->
# ============================================================
# INVOICE FLOW MODEL INDEX
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 030_INVOICE_FLOW_MODEL_OVERVIEW.md
- 030_INVOICE_FLOW_MODEL_INDEX.md
- 030_INVOICE_FLOW_MODEL.md
- 030100_INVOICE_CASE_MODEL.md
- 030110_INVOICE_LINE_MODEL.md
- 030120_INVOICE_DELIVERY_REQUEST_MODEL.md
- 030130_PAYMENT_SCHEDULE_MODEL.md
- 030140_PAYMENT_CONFIRMATION_MODEL.md
- 030150_BANK_TRANSACTION_IMPORT_MODEL.md
- 030160_SIMPLE_RECONCILIATION_MODEL.md
- 030170_RECEIPT_ISSUE_MODEL.md
- 030180_COLLECTION_ACTION_MODEL.md
- 030190_CUSTOMER_OUTSTANDING_SUMMARY_MODEL.md
- 030200_ERP_REFLECTION_REQUEST_MODEL.md
- 030210_ERP_REFLECTION_RESULT_MODEL.md
- 030220_AUDIT_LOG_MODEL.md
- 030230_STATUS_CODE_MODEL.md
- 030240_ERROR_CODE_MODEL.md
- 030250_UI_STATE_CODE_MODEL.md
- 030260_FIELD_SCHEMA_MODEL.md
- 030270_DB_PHYSICAL_OVERVIEW_MODEL.md
- 030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 030310_COLLECTION_ACTION_PHYSICAL_MODEL.md
- 030320_BANK_TRANSACTION_IMPORT_PHYSICAL_MODEL.md
- 030330_ERP_REFLECTION_PHYSICAL_MODEL.md
- 030340_CUSTOMER_OUTSTANDING_SUMMARY_PHYSICAL_MODEL.md

- 030510_INVOICEFLOW_BILLING_EXECUTION_TIMELINE_MODEL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030_INVOICE_FLOW_MODEL_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030_INVOICE_FLOW_MODEL_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the model overview for InvoiceFlow.

summary:
InvoiceFlow models invoices,
payment schedules,
payment confirmations,
bank transaction imports,
simple reconciliation,
receipts,
collection actions,
customer outstanding summary,
ERP reflection requests/results,
and related status/error codes.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/030.model/030_INVOICE_FLOW_MODEL_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040110_FRONT_INVOICE_RUNTIME.md -->
# ============================================================
# FRONT INVOICE RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- front invoice can be drafted, finalized for PDF, sent, tracked, paid, and closed
- front invoice cannot transition into ERP invoice master
- front invoice can still support receipt issuance and collection management

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040110_FRONT_INVOICE_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040120_ERP_MASTER_INVOICE_RUNTIME.md -->
# ============================================================
# ERP MASTER INVOICE RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- ERP-master invoice identity is external-authority backed
- InvoiceFlow may track payment and collection around it
- payment result reflection to ERP is allowed through shared capability

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040120_ERP_MASTER_INVOICE_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040130_BANK_MATCHING_RUNTIME.md -->
# ============================================================
# BANK MATCHING RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- imported bank transaction may create match candidates
- ambiguous matches require review
- unmatched transactions remain visible for investigation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040130_BANK_MATCHING_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040140_MANUAL_PAYMENT_CONFIRMATION_RUNTIME.md -->
# ============================================================
# MANUAL PAYMENT CONFIRMATION RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- manual confirmation supports hand-delivery and equivalent routes
- actor, date, amount, and evidence note are required
- manual confirmation may issue receipt when policy allows

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040140_MANUAL_PAYMENT_CONFIRMATION_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040150_COLLECTION_PRIORITY_RUNTIME.md -->
# ============================================================
# COLLECTION PRIORITY RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

priority_inputs:
- overdue_days
- outstanding_amount
- customer_total_outstanding
- broken_promise_count
- last_response_gap

priority_levels:
- CRITICAL
- HIGH
- MEDIUM
- LOW

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040150_COLLECTION_PRIORITY_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040160_RECEIPT_ISSUANCE_RUNTIME.md -->
# ============================================================
# RECEIPT ISSUANCE RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- receipt issuance requires confirmed payment state
- reissue must keep linkage to original payment confirmation
- receipt issuance must be audited

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040160_RECEIPT_ISSUANCE_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040_INVOICE_FLOW_RUNTIME.md -->
# ============================================================
# INVOICE FLOW RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

runtime_rules:
- front invoices remain non-ERP-master throughout lifecycle
- ERP-master invoices are treated as ERP authority references
- bank matching does not bypass review when ambiguity exists
- manual confirmation requires actor traceability
- collection priority updates when overdue or outstanding conditions change
- receipt issuance requires confirmed payment state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040_INVOICE_FLOW_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040_INVOICE_FLOW_RUNTIME_INDEX.md -->
# ============================================================
# INVOICE FLOW RUNTIME INDEX
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 040_INVOICE_FLOW_RUNTIME_OVERVIEW.md
- 040_INVOICE_FLOW_RUNTIME_INDEX.md
- 040_INVOICE_FLOW_RUNTIME.md
- 040110_FRONT_INVOICE_RUNTIME.md
- 040120_ERP_MASTER_INVOICE_RUNTIME.md
- 040130_BANK_MATCHING_RUNTIME.md
- 040140_MANUAL_PAYMENT_CONFIRMATION_RUNTIME.md
- 040150_COLLECTION_PRIORITY_RUNTIME.md
- 040160_RECEIPT_ISSUANCE_RUNTIME.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040_INVOICE_FLOW_RUNTIME_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040_INVOICE_FLOW_RUNTIME_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Runtime behavior separates front invoices,
ERP-master invoices,
bank-linked payment confirmation,
manual confirmation,
collection priority handling,
and receipt issuance.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/040.runtime/040_INVOICE_FLOW_RUNTIME_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050110_FRONT_INVOICE_CREATION_FLOW.md -->
# ============================================================
# FRONT INVOICE CREATION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. create front invoice draft
2. edit invoice lines
3. validate totals and due date
4. generate invoice PDF
5. request/send delivery
6. wait for payment
7. manage collection if overdue

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050110_FRONT_INVOICE_CREATION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050120_ERP_MASTER_INVOICE_REFERENCE_FLOW.md -->
# ============================================================
# ERP MASTER INVOICE REFERENCE FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. reference ERP-master invoice
2. display invoice facts in InvoiceFlow
3. confirm payment through bank/manual path
4. reflect payment result through shared ERP capability
5. update local visibility and audit

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050120_ERP_MASTER_INVOICE_REFERENCE_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050130_BANK_PAYMENT_CONFIRMATION_FLOW.md -->
# ============================================================
# BANK PAYMENT CONFIRMATION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. import bank transactions
2. create match candidates
3. review candidate
4. confirm payment
5. run simple reconciliation
6. issue receipt when allowed

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050130_BANK_PAYMENT_CONFIRMATION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050140_MANUAL_PAYMENT_CONFIRMATION_FLOW.md -->
# ============================================================
# MANUAL PAYMENT CONFIRMATION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. open payment confirmation screen
2. choose manual confirmation
3. enter payment date and amount
4. add note/evidence
5. confirm payment
6. issue receipt when allowed

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050140_MANUAL_PAYMENT_CONFIRMATION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050150_COLLECTION_FOLLOW_UP_FLOW.md -->
# ============================================================
# COLLECTION FOLLOW-UP FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. detect overdue status
2. compute/update collection priority
3. set collection due date
4. record dunning history
5. update promise-to-pay or escalation state
6. close when paid/resolved

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050150_COLLECTION_FOLLOW_UP_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050160_RECEIPT_ISSUANCE_FLOW.md -->
# ============================================================
# RECEIPT ISSUANCE FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

steps:
1. locate confirmed payment
2. validate receipt policy
3. generate receipt record
4. generate receipt PDF
5. store audit log

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050160_RECEIPT_ISSUANCE_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md -->
# ============================================================
# INVOICE STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines invoice lifecycle state transitions.

invoice_status_codes:
- DRAFT
- PDF_READY
- SENT_REQUESTED
- SENT
- PAYMENT_WAITING
- PARTIALLY_PAID
- PAID
- OVERDUE
- CLOSED
- CANCELLED

transitions:

- from: DRAFT
  to:
  - PDF_READY
  - CANCELLED
  conditions:
  - required invoice fields are valid
  - totals and due date are valid

- from: PDF_READY
  to:
  - SENT_REQUESTED
  - CANCELLED
  conditions:
  - invoice PDF exists

- from: SENT_REQUESTED
  to:
  - SENT
  - CANCELLED
  conditions:
  - delivery request is accepted or cancelled

- from: SENT
  to:
  - PAYMENT_WAITING
  - CANCELLED
  conditions:
  - invoice has been sent and is active

- from: PAYMENT_WAITING
  to:
  - PARTIALLY_PAID
  - PAID
  - OVERDUE
  - CANCELLED
  conditions:
  - payment result or due-date event changes state

- from: PARTIALLY_PAID
  to:
  - PAID
  - OVERDUE
  - CANCELLED
  conditions:
  - remaining amount is resolved or due-date event changes state

- from: OVERDUE
  to:
  - PARTIALLY_PAID
  - PAID
  - CLOSED
  - CANCELLED
  conditions:
  - payment or administrative resolution changes state

- from: PAID
  to:
  - CLOSED
  conditions:
  - payment handling is complete
  - no further open collection state remains

- from: CLOSED
  to:
  - none

- from: CANCELLED
  to:
  - none

rules:
- FRONT_LOCAL invoice remains FRONT_LOCAL in all states
- ERP_MASTER invoice remains ERP_MASTER in all states
- cancelled state is terminal
- closed state is terminal

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md -->
# ============================================================
# PAYMENT CONFIRMATION STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines payment confirmation state transitions.

payment_confirmation_status_codes:
- UNCONFIRMED
- BANK_MATCH_CANDIDATE
- BANK_MATCH_CONFIRMED
- MANUAL_CONFIRMED
- PARTIAL_CONFIRMED
- DIFFERENCE_FOUND
- RECEIPT_ISSUED
- CLOSED

transitions:

- from: UNCONFIRMED
  to:
  - BANK_MATCH_CANDIDATE
  - MANUAL_CONFIRMED
  conditions:
  - bank candidate appears or manual confirmation is entered

- from: BANK_MATCH_CANDIDATE
  to:
  - BANK_MATCH_CONFIRMED
  - DIFFERENCE_FOUND
  - PARTIAL_CONFIRMED
  - UNCONFIRMED
  conditions:
  - operator confirms, rejects, or returns candidate

- from: BANK_MATCH_CONFIRMED
  to:
  - RECEIPT_ISSUED
  - CLOSED
  conditions:
  - receipt is issued or payment handling is complete

- from: MANUAL_CONFIRMED
  to:
  - RECEIPT_ISSUED
  - CLOSED
  - DIFFERENCE_FOUND
  - PARTIAL_CONFIRMED
  conditions:
  - amount comparison result and receipt action determine state

- from: PARTIAL_CONFIRMED
  to:
  - RECEIPT_ISSUED
  - CLOSED
  - DIFFERENCE_FOUND
  conditions:
  - partial payment handling proceeds

- from: DIFFERENCE_FOUND
  to:
  - MANUAL_CONFIRMED
  - BANK_MATCH_CONFIRMED
  - PARTIAL_CONFIRMED
  - CLOSED
  conditions:
  - difference is resolved or case is administratively closed

- from: RECEIPT_ISSUED
  to:
  - CLOSED
  conditions:
  - no further payment confirmation action remains

- from: CLOSED
  to:
  - none

rules:
- ambiguous bank candidate must not auto-transition to confirmed
- receipt issuance requires confirmed payment
- confirmation source must remain traceable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050190_COLLECTION_STATUS_TRANSITION_FLOW.md -->
# ============================================================
# COLLECTION STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines collection lifecycle transitions.

collection_status_codes:
- NONE
- MONITORING
- FOLLOW_UP_REQUIRED
- COLLECTION_SCHEDULED
- CONTACTED
- PROMISED
- ESCALATED
- RESOLVED

transitions:

- from: NONE
  to:
  - MONITORING
  conditions:
  - invoice enters active unpaid monitoring scope

- from: MONITORING
  to:
  - FOLLOW_UP_REQUIRED
  - RESOLVED
  conditions:
  - overdue or risk fact appears, or payment resolves case

- from: FOLLOW_UP_REQUIRED
  to:
  - COLLECTION_SCHEDULED
  - RESOLVED
  conditions:
  - next action is planned or payment resolves case

- from: COLLECTION_SCHEDULED
  to:
  - CONTACTED
  - PROMISED
  - ESCALATED
  - RESOLVED
  conditions:
  - action outcome determines next state

- from: CONTACTED
  to:
  - PROMISED
  - COLLECTION_SCHEDULED
  - ESCALATED
  - RESOLVED
  conditions:
  - response or lack of response determines next state

- from: PROMISED
  to:
  - COLLECTION_SCHEDULED
  - ESCALATED
  - RESOLVED
  conditions:
  - promise kept, missed, or escalated

- from: ESCALATED
  to:
  - COLLECTION_SCHEDULED
  - RESOLVED
  conditions:
  - escalated handling continues or is resolved

- from: RESOLVED
  to:
  - none

rules:
- collection status is first-class and must not be skipped for overdue cases
- resolved is terminal
- priority queue may change without forcing a state change

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050190_COLLECTION_STATUS_TRANSITION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050200_RECEIPT_STATUS_TRANSITION_FLOW.md -->
# ============================================================
# RECEIPT STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines receipt issuance state transitions.

receipt_status_codes:
- NOT_ISSUED
- ISSUE_READY
- ISSUED
- REISSUED
- VOID

transitions:

- from: NOT_ISSUED
  to:
  - ISSUE_READY
  conditions:
  - confirmed payment exists
  - receipt policy allows issuance

- from: ISSUE_READY
  to:
  - ISSUED
  - VOID
  conditions:
  - receipt is issued or issuance is cancelled/blocked

- from: ISSUED
  to:
  - REISSUED
  - VOID
  conditions:
  - reissue or void policy action occurs

- from: REISSUED
  to:
  - REISSUED
  - VOID
  conditions:
  - further reissue or void occurs according to policy

- from: VOID
  to:
  - none

rules:
- receipt requires confirmed payment
- reissue must preserve linkage to original payment and prior receipt
- void is terminal

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050200_RECEIPT_STATUS_TRANSITION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050210_ERP_REFLECTION_STATUS_TRANSITION_FLOW.md -->
# ============================================================
# ERP REFLECTION STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines ERP reflection request/result transitions.

erp_reflection_status_codes:
- ERP_NOT_APPLICABLE
- ERP_MASTER_REFERENCE
- ERP_PAYMENT_SYNC_READY
- ERP_PAYMENT_SYNCED
- ERP_SYNC_FAILED

transitions:

- from: ERP_NOT_APPLICABLE
  to:
  - none

- from: ERP_MASTER_REFERENCE
  to:
  - ERP_PAYMENT_SYNC_READY
  - ERP_SYNC_FAILED
  conditions:
  - eligible payment-result reflection is prepared or blocked

- from: ERP_PAYMENT_SYNC_READY
  to:
  - ERP_PAYMENT_SYNCED
  - ERP_SYNC_FAILED
  conditions:
  - shared ERP reflection returns success or failure

- from: ERP_SYNC_FAILED
  to:
  - ERP_PAYMENT_SYNC_READY
  conditions:
  - retry path is allowed and prepared

- from: ERP_PAYMENT_SYNCED
  to:
  - none

rules:
- FRONT_LOCAL invoice must remain ERP_NOT_APPLICABLE for invoice-master reflection
- reflection must pass shared BusinessOS boundary
- ERP synced is terminal for the specific request result

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050210_ERP_REFLECTION_STATUS_TRANSITION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050_INVOICE_FLOW_FLOW.md -->
# ============================================================
# INVOICE FLOW FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main business flows of InvoiceFlow.

# ============================================================
# 1. FRONT INVOICE FLOW
# ============================================================

front_invoice_flow:
1. create front invoice draft
2. enter invoice lines and invoice facts
3. validate due date, amount, currency, and language
4. generate invoice PDF
5. request/send delivery
6. move to payment waiting
7. perform payment confirmation when paid
8. enter collection flow if overdue
9. close when settled

# ============================================================
# 2. ERP MASTER INVOICE FLOW
# ============================================================

erp_master_invoice_flow:
1. receive/reference ERP-master invoice fact
2. display invoice status in InvoiceFlow
3. monitor payment waiting and due timing
4. confirm payment by bank-linked or manual route
5. perform simple reconciliation
6. submit allowed payment-result reflection
7. update visibility and audit

# ============================================================
# 3. BANK PAYMENT CONFIRMATION FLOW
# ============================================================

bank_payment_confirmation_flow:
1. import bank transactions
2. create invoice match candidates
3. review candidate confidence
4. confirm payment against target invoice
5. compute difference or partial state if needed
6. allow receipt issuance
7. update collection/overdue state if resolved

# ============================================================
# 4. MANUAL PAYMENT CONFIRMATION FLOW
# ============================================================

manual_payment_confirmation_flow:
1. choose manual confirmation
2. enter payment date, amount, and note
3. attach evidence if available
4. confirm payment
5. compute difference or partial state if needed
6. allow receipt issuance
7. update collection/overdue state if resolved

# ============================================================
# 5. COLLECTION FLOW
# ============================================================

collection_follow_up_flow:
1. detect overdue status
2. compute/update collection priority
3. set collection due date
4. record dunning history
5. record promise-to-pay or escalation
6. continue until payment confirmed
7. resolve collection state

# ============================================================
# 6. RECEIPT FLOW
# ============================================================

receipt_issuance_flow:
1. locate confirmed payment
2. verify receipt policy
3. generate receipt record
4. generate receipt PDF
5. store audit record
6. expose receipt history

# ============================================================
# 7. FLOW RULES
# ============================================================

flow_rules:
- FRONT_LOCAL invoice never becomes ERP invoice master
- ERP reflection is allowed only on eligible paths
- receipt issuance requires confirmed payment
- collection is triggered by overdue/unpaid conditions
- ambiguous bank match must stop for review

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050_INVOICE_FLOW_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050_INVOICE_FLOW_FLOW_INDEX.md -->
# ============================================================
# INVOICE FLOW FLOW INDEX
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 050_INVOICE_FLOW_FLOW_OVERVIEW.md
- 050_INVOICE_FLOW_FLOW_INDEX.md
- 050_INVOICE_FLOW_FLOW.md
- 050110_FRONT_INVOICE_CREATION_FLOW.md
- 050120_ERP_MASTER_INVOICE_REFERENCE_FLOW.md
- 050130_BANK_PAYMENT_CONFIRMATION_FLOW.md
- 050140_MANUAL_PAYMENT_CONFIRMATION_FLOW.md
- 050150_COLLECTION_FOLLOW_UP_FLOW.md
- 050160_RECEIPT_ISSUANCE_FLOW.md
- 050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 050190_COLLECTION_STATUS_TRANSITION_FLOW.md
- 050200_RECEIPT_STATUS_TRANSITION_FLOW.md
- 050210_ERP_REFLECTION_STATUS_TRANSITION_FLOW.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050_INVOICE_FLOW_FLOW_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050_INVOICE_FLOW_FLOW_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW FLOW OVERVIEW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
InvoiceFlow handles front invoice creation,
ERP-master invoice reference,
bank/manual payment confirmation,
collection follow-up,
and receipt issuance flows.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/050.flow/050_INVOICE_FLOW_FLOW_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060110_BANK_ACCOUNT_LINK_INTEGRATION_CONTRACT.md -->
# ============================================================
# BANK ACCOUNT LINK INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

contract_scope:
- bank account registration reference
- transaction import
- imported transaction identity
- match candidate generation input

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060110_BANK_ACCOUNT_LINK_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060120_RECEIPT_PDF_INTEGRATION_CONTRACT.md -->
# ============================================================
# RECEIPT PDF INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

contract_scope:
- invoice PDF generation request
- receipt PDF generation request
- stored pdf_document_id return

document_requirements:
- multilingual text rendering support
- multicurrency display support
- layout stability across variable text lengths

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060120_RECEIPT_PDF_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060130_SHARED_ERP_REFLECTION_INTEGRATION_CONTRACT.md -->
# ============================================================
# SHARED ERP REFLECTION INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

contract_scope:
- payment result reflection request
- reflection eligibility validation
- result return
- error return

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060130_SHARED_ERP_REFLECTION_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060140_NOTIFICATION_INTEGRATION_CONTRACT.md -->
# ============================================================
# NOTIFICATION INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

contract_scope:
- overdue reminder
- collection due reminder
- receipt issuance notification
- send/delivery result notification

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060140_NOTIFICATION_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md -->
# ============================================================
# API EXACT PAYLOAD OVERVIEW
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request and response payload principles for InvoiceFlow.

api_principles:
- every request carries company scope
- every response carries success boolean
- every response carries canonical status summary where applicable
- every failure returns machine-readable error codes
- currency_code is mandatory on monetary payloads
- language_code is mandatory on document-output related payloads where applicable
- ERP authority boundary must be visible in payloads
- FRONT_LOCAL and ERP_MASTER must never be conflated in payloads

standard_response_shape:
- success
- error_code
- error_message
- data

standard_error_codes:
- VALIDATION_ERROR
- UNAUTHORIZED
- FORBIDDEN
- NOT_FOUND
- CONFLICT
- ERP_REFLECTION_NOT_ALLOWED
- PAYMENT_CONFIRMATION_NOT_ALLOWED
- RECEIPT_ISSUANCE_NOT_ALLOWED
- BANK_MATCH_AMBIGUOUS
- INTERNAL_ERROR

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060160_GET_INVOICE_LIST_EXACT_PAYLOAD.md -->
# ============================================================
# GET INVOICE LIST EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/list

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "filters": {
    "invoice_authority_type": "FRONT_LOCAL | ERP_MASTER | null",
    "invoice_status_code": "DRAFT | PDF_READY | SENT_REQUESTED | SENT | PAYMENT_WAITING | PARTIALLY_PAID | PAID | OVERDUE | CLOSED | CANCELLED | null",
    "collection_status_code": "NONE | MONITORING | FOLLOW_UP_REQUIRED | COLLECTION_SCHEDULED | CONTACTED | PROMISED | ESCALATED | RESOLVED | null",
    "customer_id": "uuid | null",
    "priority_collection_flag": "true | false | null",
    "overdue_only": "true | false",
    "keyword": "string"
  },
  "sort": {
    "field": "invoice_date | payment_due_date | overdue_days | total_amount | updated_at",
    "direction": "asc | desc"
  },
  "page": 1,
  "page_size": 50
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "items": [
      {
        "invoice_case_id": "uuid",
        "invoice_number_local": "string | null",
        "erp_invoice_number": "string | null",
        "invoice_authority_type": "FRONT_LOCAL | ERP_MASTER",
        "erp_link_eligibility": "ERP_NOT_APPLICABLE | ERP_MASTER_REFERENCE | ERP_PAYMENT_SYNC_READY | ERP_PAYMENT_SYNCED | ERP_SYNC_FAILED",
        "customer_id": "uuid",
        "customer_name": "string",
        "currency_code": "JPY",
        "total_amount": 120000,
        "confirmed_amount_total": 20000,
        "outstanding_amount": 100000,
        "invoice_status_code": "PARTIALLY_PAID",
        "collection_status_code": "FOLLOW_UP_REQUIRED",
        "priority_collection_flag": true,
        "overdue_days": 14,
        "payment_due_date": "2026-04-30",
        "updated_at": "2026-04-12T11:30:00+09:00"
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  }
}

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060160_GET_INVOICE_LIST_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060170_GET_INVOICE_DETAIL_EXACT_PAYLOAD.md -->
# ============================================================
# GET INVOICE DETAIL EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/detail

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid"
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_case": {
      "invoice_case_id": "uuid",
      "invoice_number_local": "INV-LOCAL-0001",
      "erp_invoice_number": null,
      "invoice_origin_type": "FRONT_LOCAL",
      "invoice_authority_type": "FRONT_LOCAL",
      "erp_link_eligibility": "ERP_NOT_APPLICABLE",
      "title": "April maintenance fee",
      "customer_id": "uuid",
      "customer_name": "Sample Trading",
      "language_code": "ja-JP",
      "currency_code": "JPY",
      "exchange_rate_snapshot": null,
      "invoice_date": "2026-04-10",
      "payment_due_date": "2026-04-30",
      "subtotal_amount": 100000,
      "tax_amount": 10000,
      "total_amount": 110000,
      "invoice_status_code": "PAYMENT_WAITING",
      "collection_status_code": "MONITORING",
      "priority_collection_flag": false,
      "overdue_days": 0,
      "collection_due_date": null,
      "pdf_document_id": "uuid | null"
    },
    "invoice_lines": [
      {
        "invoice_line_id": "uuid",
        "line_no": 1,
        "item_name": "Maintenance",
        "quantity": 1,
        "unit_price": 100000,
        "tax_code": "STANDARD",
        "line_amount": 100000,
        "remarks": null
      }
    ],
    "payment_summary": {
      "confirmed_amount_total": 0,
      "outstanding_amount": 110000,
      "latest_confirmation_status_code": "UNCONFIRMED"
    },
    "receipt_items": [],
    "reflection_summary": {
      "reflection_status": "ERP_NOT_APPLICABLE",
      "last_reflection_at": null,
      "last_reflection_error": null
    }
  }
}

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060170_GET_INVOICE_DETAIL_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md -->
# ============================================================
# CREATE FRONT INVOICE EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/front-invoice/create

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice": {
    "title": "April maintenance fee",
    "customer_id": "uuid",
    "language_code": "ja-JP",
    "currency_code": "JPY",
    "invoice_date": "2026-04-10",
    "payment_due_date": "2026-04-30",
    "lines": [
      {
        "line_no": 1,
        "item_name": "Maintenance",
        "quantity": 1,
        "unit_price": 100000,
        "tax_code": "STANDARD",
        "remarks": null
      }
    ]
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_case_id": "uuid",
    "invoice_number_local": "INV-LOCAL-0001",
    "invoice_authority_type": "FRONT_LOCAL",
    "erp_link_eligibility": "ERP_NOT_APPLICABLE",
    "invoice_status_code": "DRAFT",
    "subtotal_amount": 100000,
    "tax_amount": 10000,
    "total_amount": 110000
  }
}

validation_rules:
- customer_id required
- language_code required
- currency_code required
- at least one line required
- payment_due_date must be on or after invoice_date

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md -->
# ============================================================
# CONFIRM MANUAL PAYMENT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/payment/manual-confirm

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "confirmation": {
    "confirmed_payment_date": "2026-04-12",
    "confirmed_amount": 50000,
    "fee_amount": 0,
    "manual_receipt_note": "Cash hand-delivered at office",
    "evidence_file_id": "uuid | null"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "payment_confirmation_id": "uuid",
    "confirmation_source_type": "MANUAL",
    "confirmation_status_code": "PARTIAL_CONFIRMED",
    "confirmed_amount": 50000,
    "fee_amount": 0,
    "difference_amount": 60000,
    "invoice_status_code": "PARTIALLY_PAID",
    "collection_status_code": "MONITORING",
    "receipt_issue_ready": true
  }
}

error_examples:
- PAYMENT_CONFIRMATION_NOT_ALLOWED
- VALIDATION_ERROR
- FORBIDDEN

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060200_CONFIRM_BANK_MATCH_EXACT_PAYLOAD.md -->
# ============================================================
# CONFIRM BANK MATCH EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/payment/bank-match-confirm

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "bank_transaction_id": "uuid",
  "decision": {
    "action": "confirm",
    "confirmed_amount_override": null,
    "fee_amount": 0,
    "note": "Matched by operator review"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "payment_confirmation_id": "uuid",
    "confirmation_source_type": "BANK_LINKED",
    "confirmation_status_code": "BANK_MATCH_CONFIRMED",
    "bank_transaction_id": "uuid",
    "confirmed_amount": 110000,
    "difference_amount": 0,
    "invoice_status_code": "PAID",
    "collection_status_code": "RESOLVED",
    "receipt_issue_ready": true
  }
}

error_examples:
- BANK_MATCH_AMBIGUOUS
- PAYMENT_CONFIRMATION_NOT_ALLOWED
- CONFLICT

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060200_CONFIRM_BANK_MATCH_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md -->
# ============================================================
# ISSUE RECEIPT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/receipt/issue

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "payment_confirmation_id": "uuid",
  "receipt": {
    "language_code": "ja-JP",
    "currency_code": "JPY",
    "issue_type_code": "STANDARD"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "receipt_issue_id": "uuid",
    "receipt_number": "RCT-20260412-0001",
    "receipt_status_code": "ISSUED",
    "pdf_document_id": "uuid",
    "issued_at": "2026-04-12T11:45:00+09:00"
  }
}

error_examples:
- RECEIPT_ISSUANCE_NOT_ALLOWED
- NOT_FOUND
- FORBIDDEN

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060220_RECORD_COLLECTION_ACTION_EXACT_PAYLOAD.md -->
# ============================================================
# RECORD COLLECTION ACTION EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/collection/action-record

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "collection_action": {
    "action_type_code": "CALL | EMAIL | VISIT | ESCALATION | NOTE",
    "action_date": "2026-04-12",
    "action_note": "Called customer and confirmed payment next week",
    "promised_payment_date": "2026-04-19 | null",
    "next_action_date": "2026-04-20 | null",
    "contact_method_code": "PHONE | EMAIL | VISIT | OTHER",
    "response_summary": "Customer promised payment on 2026-04-19",
    "escalation_required_flag": false
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "collection_action_id": "uuid",
    "collection_status_code": "PROMISED",
    "priority_collection_flag": true,
    "next_action_date": "2026-04-20",
    "promised_payment_date": "2026-04-19"
  }
}

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060220_RECORD_COLLECTION_ACTION_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060230_REQUEST_ERP_PAYMENT_REFLECTION_EXACT_PAYLOAD.md -->
# ============================================================
# REQUEST ERP PAYMENT REFLECTION EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/erp/payment-reflection-request

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "payment_confirmation_id": "uuid",
  "reflection_request": {
    "reflection_type_code": "PAYMENT_RESULT",
    "request_note": "Reflect confirmed payment to ERP master invoice"
  }
}

response_json_success:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "erp_reflection_request_id": "uuid",
    "reflection_status": "ERP_PAYMENT_SYNC_READY",
    "invoice_authority_type": "ERP_MASTER",
    "erp_invoice_number": "ERP-INV-2026-00491"
  }
}

response_json_failure:
{
  "success": false,
  "error_code": "ERP_REFLECTION_NOT_ALLOWED",
  "error_message": "Front-local invoice cannot be reflected as ERP master payment result.",
  "data": {
    "invoice_case_id": "uuid",
    "invoice_authority_type": "FRONT_LOCAL",
    "erp_link_eligibility": "ERP_NOT_APPLICABLE"
  }
}

rules:
- FRONT_LOCAL invoice must fail this request for ERP-master reflection path
- shared BusinessOS boundary is mandatory

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060230_REQUEST_ERP_PAYMENT_REFLECTION_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060240_GENERATE_INVOICE_PDF_EXACT_PAYLOAD.md -->
# ============================================================
# GENERATE INVOICE PDF EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/pdf-generate

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "document": {
    "language_code": "ja-JP",
    "currency_code": "JPY",
    "template_code": "STANDARD_INVOICE"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_case_id": "uuid",
    "invoice_status_code": "PDF_READY",
    "pdf_document_id": "uuid",
    "generated_at": "2026-04-12T12:10:00+09:00"
  }
}

error_examples:
- VALIDATION_ERROR
- FORBIDDEN
- NOT_FOUND

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060240_GENERATE_INVOICE_PDF_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060250_REQUEST_INVOICE_SEND_EXACT_PAYLOAD.md -->
# ============================================================
# REQUEST INVOICE SEND EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/send-request

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "send_request": {
    "delivery_channel_code": "EMAIL | SHARE_LINK | MANUAL_HANDOFF",
    "recipient_name": "string",
    "recipient_address": "string",
    "message_subject": "string | null",
    "message_body": "string | null"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_delivery_request_id": "uuid",
    "invoice_case_id": "uuid",
    "delivery_status_code": "REQUESTED",
    "invoice_status_code": "SENT_REQUESTED",
    "requested_at": "2026-04-12T12:12:00+09:00"
  }
}

validation_rules:
- invoice PDF must exist before send request
- recipient_address required for EMAIL and SHARE_LINK

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060250_REQUEST_INVOICE_SEND_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060260_GET_BANK_MATCH_CANDIDATE_LIST_EXACT_PAYLOAD.md -->
# ============================================================
# GET BANK MATCH CANDIDATE LIST EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/payment/bank-match-candidate-list

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "filters": {
    "bank_account_id": "uuid | null",
    "match_status_code": "UNMATCHED | CANDIDATE | CONFIRMED | REJECTED | null",
    "date_from": "2026-04-01 | null",
    "date_to": "2026-04-30 | null",
    "keyword": "string"
  },
  "page": 1,
  "page_size": 50
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "items": [
      {
        "bank_transaction_id": "uuid",
        "bank_account_id": "uuid",
        "transaction_date": "2026-04-12",
        "transaction_name": "SAMPLE TRADING",
        "transaction_amount": 110000,
        "currency_code": "JPY",
        "match_status_code": "CANDIDATE",
        "candidate_invoice_case_id": "uuid | null",
        "candidate_invoice_number": "INV-LOCAL-0001 | null",
        "candidate_confidence": 0.94
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  }
}

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060260_GET_BANK_MATCH_CANDIDATE_LIST_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060270_REISSUE_RECEIPT_EXACT_PAYLOAD.md -->
# ============================================================
# REISSUE RECEIPT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/receipt/reissue

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "receipt_issue_id": "uuid",
  "reissue": {
    "reason_code": "CORRECTION | LOST_COPY | CUSTOMER_REQUEST | OTHER",
    "reason_text": "Customer requested another copy",
    "language_code": "ja-JP",
    "currency_code": "JPY"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "new_receipt_issue_id": "uuid",
    "new_receipt_number": "RCT-20260412-0002",
    "receipt_status_code": "REISSUED",
    "prior_receipt_issue_id": "uuid",
    "pdf_document_id": "uuid",
    "issued_at": "2026-04-12T12:15:00+09:00"
  }
}

error_examples:
- RECEIPT_ISSUANCE_NOT_ALLOWED
- FORBIDDEN
- NOT_FOUND

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060270_REISSUE_RECEIPT_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060280_GET_ERP_REFLECTION_RESULT_EXACT_PAYLOAD.md -->
# ============================================================
# GET ERP REFLECTION RESULT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/erp/reflection-result

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "erp_reflection_request_id": "uuid"
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "erp_reflection_request_id": "uuid",
    "invoice_case_id": "uuid",
    "invoice_authority_type": "ERP_MASTER",
    "reflection_type_code": "PAYMENT_RESULT",
    "reflection_status": "ERP_PAYMENT_SYNCED",
    "external_document_no": "ERP-AR-2026-00188",
    "applied_at": "2026-04-12T12:20:00+09:00",
    "error_code": null,
    "error_message": null
  }
}

response_json_failure_case:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "erp_reflection_request_id": "uuid",
    "invoice_case_id": "uuid",
    "invoice_authority_type": "ERP_MASTER",
    "reflection_type_code": "PAYMENT_RESULT",
    "reflection_status": "ERP_SYNC_FAILED",
    "external_document_no": null,
    "applied_at": null,
    "error_code": "ERP_TARGET_NOT_FOUND",
    "error_message": "ERP invoice target was not found."
  }
}

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060280_GET_ERP_REFLECTION_RESULT_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060290_INVOICEFLOW_BILLING_COCKPIT_PAYLOAD.md -->
# ============================================================
# INVOICEFLOW BILLING COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-cockpit-payload

purpose:
Fixes the exact payload family for the billing cockpit surface.

endpoint:
- POST /api/v1/invoice-flow/billing-cockpit/query

request_fields:
- invoiceId: uuid string, required
- timezone: string, required
- includePendingApproval: boolean, required
- includeSettlementBlockers: boolean, required
- includeDownstreamFinance: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- invoiceId: uuid string, required
- invoiceTitle: string, required
- healthSummaryMessage: string, required
- pendingApprovalItems: array, required
- settlementBlockerItems: array, required
- downstreamFinanceItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- billingExecutionTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- dueAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060290_INVOICEFLOW_BILLING_COCKPIT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060290_SAVE_INVOICE_LIST_FILTER_EXACT_PAYLOAD.md -->
# ============================================================
# SAVE INVOICE LIST FILTER EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice-list-filter/save

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "filter_preset": {
    "preset_name": "Overdue priority queue",
    "invoice_authority_type": null,
    "invoice_status_code": "OVERDUE",
    "collection_status_code": "FOLLOW_UP_REQUIRED",
    "priority_collection_flag": true,
    "overdue_only": true,
    "sort_field": "overdue_days",
    "sort_direction": "desc"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "filter_preset_id": "uuid",
    "preset_name": "Overdue priority queue",
    "saved_at": "2026-04-12T12:25:00+09:00"
  }
}

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060290_SAVE_INVOICE_LIST_FILTER_EXACT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060300_ERROR_HANDLING_AND_RESPONSE_POLICY.md -->
# ============================================================
# ERROR HANDLING AND RESPONSE POLICY
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines response and error handling consistency rules.

response_rules:
- success false must include error_code
- validation failure should identify target field group when possible
- forbidden and not_found should remain distinct
- conflict should be used when state mismatch prevents safe processing
- internal error should not leak unsafe internals to end users

financial_safety_rules:
- ambiguous bank match should not downgrade to silent success
- receipt issuance without confirmed payment should fail explicitly
- ERP reflection on non-eligible invoice should fail explicitly
- authority mismatch should fail explicitly

ui_alignment_rules:
- machine-readable error must map to understandable UI message
- financial blocking errors should remain visible in detail screens where relevant

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060300_ERROR_HANDLING_AND_RESPONSE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060300_INVOICEFLOW_SETTLEMENT_EXCEPTION_REVIEW_PAYLOAD.md -->
# ============================================================
# INVOICEFLOW SETTLEMENT EXCEPTION REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: settlement-exception-review-payload

purpose:
Fixes the exact payload family for settlement and exception review.

endpoint:
- POST /api/v1/invoice-flow/settlement-exception-review/query

request_fields:
- invoiceId: uuid string, required
- includeResolved: boolean, required
- includeApprovalPending: boolean, required
- includeDownstreamFinanceBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- invoiceId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedApprovalId
- relatedSettlementBlockerId
- relatedFinanceBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- dueAt

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060300_INVOICEFLOW_SETTLEMENT_EXCEPTION_REVIEW_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060320_INVOICEFLOW_PHASE_A_API_STARTER.md -->
# ============================================================
# INVOICEFLOW PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for financial control in InvoiceFlow.

phase_a_api_goals:
- query billing cockpit
- query settlement exception review
- prepare later approval and downstream finance actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/invoice-flow/billing-cockpit/query
- POST /api/v1/invoice-flow/settlement-exception-review/query

endpoint_billing_cockpit_query:
  purpose:
    - return approval pending items, settlement blockers, and downstream finance visibility in one surface
  minimum_request:
    - invoiceId
    - timezone
    - includePendingApproval
    - includeSettlementBlockers
    - includeDownstreamFinance
    - pageSize
  minimum_response:
    - invoiceId
    - invoiceTitle
    - healthSummaryMessage
    - pendingApprovalItems
    - settlementBlockerItems
    - downstreamFinanceItems
    - generatedAt

endpoint_settlement_exception_review_query:
  purpose:
    - return settlement and finance blocker rows for financial review
  minimum_request:
    - invoiceId
    - includeResolved
    - includeApprovalPending
    - includeDownstreamFinanceBlockers
    - pageSize
  minimum_response:
    - invoiceId
    - reviewItems
    - summaryMessage
    - generatedAt

response_rules:
- ids use uuid string form
- timestamps use ISO-8601 strings
- arrays return empty arrays, not omission
- nullable values return null once frozen
- no binary payloads in these responses

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- internal_error

explicit_non_scope:
- no invoice write endpoint in this slice
- no approval action write endpoint in this slice
- no settlement execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and settlement actions until query-side surfaces stabilize

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060320_INVOICEFLOW_PHASE_A_API_STARTER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060330_INVOICEFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md -->
# ============================================================
# INVOICEFLOW PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
billing cockpit and settlement exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_billing_cockpit_query:
  route: POST /api/v1/invoice-flow/billing-cockpit/query
  request_fields:
    - invoiceId: uuid string, required
    - timezone: string, required
    - includePendingApproval: boolean, required
    - includeSettlementBlockers: boolean, required
    - includeDownstreamFinance: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - invoiceId: uuid string, required
    - invoiceTitle: string, required
    - healthSummaryMessage: string, required
    - pendingApprovalItems: array, required
    - settlementBlockerItems: array, required
    - downstreamFinanceItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- billingExecutionTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
- dueAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_settlement_exception_review_query:
  route: POST /api/v1/invoice-flow/settlement-exception-review/query
  request_fields:
    - invoiceId: uuid string, required
    - includeResolved: boolean, required
    - includeApprovalPending: boolean, required
    - includeDownstreamFinanceBlockers: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - invoiceId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedApprovalId: uuid string, nullable
- relatedSettlementBlockerId: uuid string, nullable
- relatedFinanceBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- dueAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- executionStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060330_INVOICEFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060_INVOICE_FLOW_INTEGRATION.md -->
# ============================================================
# INVOICE FLOW INTEGRATION
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

integration_topics:
- bank account transaction import
- invoice PDF generation
- receipt PDF generation
- shared ERP reflection
- notification and reminder support

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060_INVOICE_FLOW_INTEGRATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060_INVOICE_FLOW_INTEGRATION_INDEX.md -->
# ============================================================
# INVOICE FLOW INTEGRATION INDEX
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 060_INVOICE_FLOW_INTEGRATION_OVERVIEW.md
- 060_INVOICE_FLOW_INTEGRATION_INDEX.md
- 060_INVOICE_FLOW_INTEGRATION.md
- 060110_BANK_ACCOUNT_LINK_INTEGRATION_CONTRACT.md
- 060120_RECEIPT_PDF_INTEGRATION_CONTRACT.md
- 060130_SHARED_ERP_REFLECTION_INTEGRATION_CONTRACT.md
- 060140_NOTIFICATION_INTEGRATION_CONTRACT.md
- 060150_API_EXACT_PAYLOAD_OVERVIEW.md
- 060160_GET_INVOICE_LIST_EXACT_PAYLOAD.md
- 060170_GET_INVOICE_DETAIL_EXACT_PAYLOAD.md
- 060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 060200_CONFIRM_BANK_MATCH_EXACT_PAYLOAD.md
- 060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 060220_RECORD_COLLECTION_ACTION_EXACT_PAYLOAD.md
- 060230_REQUEST_ERP_PAYMENT_REFLECTION_EXACT_PAYLOAD.md
- 060240_GENERATE_INVOICE_PDF_EXACT_PAYLOAD.md
- 060250_REQUEST_INVOICE_SEND_EXACT_PAYLOAD.md
- 060260_GET_BANK_MATCH_CANDIDATE_LIST_EXACT_PAYLOAD.md
- 060270_REISSUE_RECEIPT_EXACT_PAYLOAD.md
- 060280_GET_ERP_REFLECTION_RESULT_EXACT_PAYLOAD.md
- 060290_SAVE_INVOICE_LIST_FILTER_EXACT_PAYLOAD.md
- 060300_ERROR_HANDLING_AND_RESPONSE_POLICY.md

- 060290_INVOICEFLOW_BILLING_COCKPIT_PAYLOAD.md

- 060300_INVOICEFLOW_SETTLEMENT_EXCEPTION_REVIEW_PAYLOAD.md

- 060320_INVOICEFLOW_PHASE_A_API_STARTER.md

- 060330_INVOICEFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060_INVOICE_FLOW_INTEGRATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060_INVOICE_FLOW_INTEGRATION_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
InvoiceFlow integrates with bank account link,
PDF generation,
shared ERP reflection,
and notification capability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/060.integration/060_INVOICE_FLOW_INTEGRATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070110_COLLECTION_OPERATIONS_STANDARD.md -->
# ============================================================
# COLLECTION OPERATIONS STANDARD
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

standard:
- overdue invoices must appear in collection queue
- collection due date must be maintained
- dunning history must be recorded

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070110_COLLECTION_OPERATIONS_STANDARD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070120_RECEIPT_REISSUE_OPERATIONS_STANDARD.md -->
# ============================================================
# RECEIPT REISSUE OPERATIONS STANDARD
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

standard:
- reissue keeps original linkage
- reissue reason is mandatory
- reissue is audited

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070120_RECEIPT_REISSUE_OPERATIONS_STANDARD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070130_BANK_MATCH_EXCEPTION_OPERATIONS_STANDARD.md -->
# ============================================================
# BANK MATCH EXCEPTION OPERATIONS STANDARD
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

standard:
- ambiguous bank matches must be reviewed
- forced confirmation requires operator traceability
- unresolved imports remain visible

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070130_BANK_MATCH_EXCEPTION_OPERATIONS_STANDARD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070140_BANK_IMPORT_OPERATIONS_STANDARD.md -->
# ============================================================
# BANK IMPORT OPERATIONS STANDARD
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines operational standards for bank transaction import handling.

standard_rules:
- imported bank transactions must remain visible until matched, rejected, or archived by policy
- ambiguous candidate matching must require human review
- duplicate external transaction keys must be blocked or flagged
- imported transactions must preserve original transaction date and raw reference
- operator override must be auditable
- bank import failure must not silently discard records

operator_actions:
- review candidate
- reject candidate
- confirm candidate
- mark as needs investigation
- reopen previously rejected candidate when policy allows

minimum_visibility:
- bank account
- transaction date
- transaction name
- transaction amount
- candidate invoice
- confidence score
- current match status

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070140_BANK_IMPORT_OPERATIONS_STANDARD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070150_NOTIFICATION_OPERATIONS_STANDARD.md -->
# ============================================================
# NOTIFICATION OPERATIONS STANDARD
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines notification-related operation standards.

notification_targets:
- invoice send request result
- overdue occurrence
- collection due reminder
- promised payment due reminder
- ERP reflection failure
- receipt issuance completion

notification_rules:
- notifications are advisory and must not replace canonical status persistence
- urgent financial exceptions should surface in dashboard even if notifications fail
- duplicate notifications should be minimized for the same unresolved issue
- notification wording must remain understandable for operators
- multilingual delivery should follow actor or tenant preference where possible

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070150_NOTIFICATION_OPERATIONS_STANDARD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070160_AUDIT_EVENT_LEDGER.md -->
# ============================================================
# AUDIT EVENT LEDGER
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines auditable business events.

audit_events:
- FRONT_INVOICE_CREATED
- FRONT_INVOICE_UPDATED
- INVOICE_PDF_GENERATED
- INVOICE_SEND_REQUESTED
- PAYMENT_MANUAL_CONFIRMED
- PAYMENT_BANK_MATCH_CONFIRMED
- PAYMENT_DIFFERENCE_OVERRIDDEN
- RECEIPT_ISSUED
- RECEIPT_REISSUED
- COLLECTION_ACTION_RECORDED
- COLLECTION_ESCALATED
- ERP_REFLECTION_REQUESTED
- ERP_REFLECTION_RETRIED
- ERP_REFLECTION_FAILED
- ERP_REFLECTION_SYNCED

minimum_event_fields:
- event_code
- company_id
- actor_user_id
- target_type
- target_id
- occurred_at
- before_json when applicable
- after_json when applicable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070160_AUDIT_EVENT_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070_INVOICE_FLOW_OPERATIONS.md -->
# ============================================================
# INVOICE FLOW OPERATIONS
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

operations_topics:
- daily payment confirmation review
- overdue monitoring
- priority collection queue review
- receipt reissue review
- ERP reflection exception handling

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070_INVOICE_FLOW_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070_INVOICE_FLOW_OPERATIONS_INDEX.md -->
# ============================================================
# INVOICE FLOW OPERATIONS INDEX
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 070_INVOICE_FLOW_OPERATIONS_OVERVIEW.md
- 070_INVOICE_FLOW_OPERATIONS_INDEX.md
- 070_INVOICE_FLOW_OPERATIONS.md
- 070110_COLLECTION_OPERATIONS_STANDARD.md
- 070120_RECEIPT_REISSUE_OPERATIONS_STANDARD.md
- 070130_BANK_MATCH_EXCEPTION_OPERATIONS_STANDARD.md
- 070140_BANK_IMPORT_OPERATIONS_STANDARD.md
- 070150_NOTIFICATION_OPERATIONS_STANDARD.md
- 070160_AUDIT_EVENT_LEDGER.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070_INVOICE_FLOW_OPERATIONS_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070_INVOICE_FLOW_OPERATIONS_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW OPERATIONS OVERVIEW
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Operations cover daily payment checking,
collection follow-up,
receipt reissue handling,
and bank match exception handling.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/070.operations/070_INVOICE_FLOW_OPERATIONS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080110_INVOICE_AUTHORITY_POLICY.md -->
# ============================================================
# INVOICE AUTHORITY POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- ERP-master invoice authority belongs to ERP
- front invoice authority belongs only to InvoiceFlow operational scope
- front invoice must not masquerade as ERP-master invoice

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080110_INVOICE_AUTHORITY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080120_RECEIPT_POLICY.md -->
# ============================================================
# RECEIPT POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- receipt requires confirmed payment
- bank-linked or manual confirmation are both acceptable sources
- reissue must keep auditability

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080120_RECEIPT_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080130_COLLECTION_PRIORITY_POLICY.md -->
# ============================================================
# COLLECTION PRIORITY POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- overdue days and outstanding amount are primary drivers
- high risk cases should surface first
- collection priority logic must be explainable to operators

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080130_COLLECTION_PRIORITY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080140_FAIL_CLOSED_POLICY.md -->
# ============================================================
# FAIL CLOSED POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- if invoice authority is unclear, block reflective operation
- if amount or target mapping is unclear, block confirmation/finalization
- if receipt precondition is missing, do not issue receipt

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080140_FAIL_CLOSED_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080150_COMPETITIVE_DIFFERENTIATION_POLICY.md -->
# ============================================================
# COMPETITIVE DIFFERENTIATION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes policy-level differentiation choices for InvoiceFlow.

policy_decisions:
- InvoiceFlow shall not position itself as an ERP replacement.
- InvoiceFlow shall explicitly support ERP-master coexistence.
- InvoiceFlow shall integrate collection management in the same product scope.
- InvoiceFlow shall support both bank-linked and manual payment confirmation.
- InvoiceFlow shall allow receipt issuance from confirmed payment regardless of route.
- InvoiceFlow shall visibly distinguish locally-created invoices from ERP-master invoices.
- InvoiceFlow shall visibly distinguish ERP-eligible and ERP-non-eligible operations.
- InvoiceFlow shall optimize for daily operational handling, not only accounting-office workflows.

operator_value_policy:
- an operator must understand invoice authority at a glance
- an operator must understand overdue/collection priority at a glance
- an operator must be able to confirm payment from realistic routes
- an operator must be able to move from unpaid state to collection action without leaving the app

exclusion_policy:
- do not hide collection data behind separate modules that feel like another product
- do not over-specialize into accounting-only terminology on every screen
- do not require ERP adoption for local/front invoice use

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080150_COMPETITIVE_DIFFERENTIATION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080160_DOCUMENT_NUMBERING_POLICY.md -->
# ============================================================
# DOCUMENT NUMBERING POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines numbering policy for invoice and receipt documents.

invoice_number_policy:
- FRONT_LOCAL invoice numbers are application-managed
- ERP_MASTER invoice numbers are ERP-managed
- local invoice numbers must not pretend to be ERP invoice numbers
- local invoice number uniqueness is within company scope
- invoice numbers should remain stable after PDF generation unless formally cancelled/recreated by policy

receipt_number_policy:
- receipt numbers are application-managed unless future tenant policy overrides exist
- receipt number uniqueness is within company scope
- reissued receipt receives a new receipt number
- prior receipt linkage is mandatory for reissue

numbering_visibility_rules:
- invoice detail must show both local and ERP invoice number fields when relevant
- receipt detail must show prior receipt number on reissue

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080160_DOCUMENT_NUMBERING_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080170_DOCUMENT_TEMPLATE_POLICY.md -->
# ============================================================
# DOCUMENT TEMPLATE POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines template policy for invoice and receipt PDFs.

template_rules:
- invoice PDF and receipt PDF must use approved template codes
- template output must support multilingual text expansion
- template output must support multicurrency display without ambiguity
- FRONT_LOCAL invoice template must not visually imply ERP master authority
- receipt template must clearly show linked payment facts when required by policy
- reissued receipts must remain distinguishable from originally issued receipts when policy requires

document_footer_rules:
- document footer may include authority note
- FRONT_LOCAL invoice may include note that ERP master authority is separate when tenant policy requires
- receipt reissue may include reissue reason or reissue marker when tenant policy requires

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080170_DOCUMENT_TEMPLATE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080180_SIMPLE_RECONCILIATION_POLICY.md -->
# ============================================================
# SIMPLE RECONCILIATION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines simple reconciliation policy.

policy_position:
- simple reconciliation is front-side operational alignment
- simple reconciliation is not ERP-side formal settlement truth

matching_rules:
- exact amount match may be treated as direct match candidate
- fee-adjusted differences must remain explicit
- partial payment must remain explicit
- operator must be shown difference_amount
- unresolved differences must not be hidden by UI simplification

closure_rules:
- payment may be operationally closed in InvoiceFlow according to policy
- formal ERP truth remains separate for ERP_MASTER paths

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080180_SIMPLE_RECONCILIATION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080190_DATA_RETENTION_AND_CORRECTION_POLICY.md -->
# ============================================================
# DATA RETENTION AND CORRECTION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines retention, correction, and cancellation principles.

retention_rules:
- financial operation records should be retained for audit and operational traceability
- payment confirmation, receipt issuance, collection action, and ERP reflection records should not be silently deleted
- correction should prefer additive traceable events over destructive overwrite where feasible

correction_rules:
- invoice correction after send may require controlled edit or replacement policy
- manual payment confirmation correction must remain auditable
- receipt reissue must preserve prior linkage
- cancelled invoice should remain historically visible when policy requires

deletion_rules:
- hard delete is discouraged for financial trail records
- archival or inactive visibility is preferred to destructive deletion

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080190_DATA_RETENTION_AND_CORRECTION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080200_NOTIFICATION_POLICY.md -->
# ============================================================
# NOTIFICATION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines notification policy for InvoiceFlow.

policy_rules:
- notifications are secondary to canonical persisted state
- overdue notifications must not be the only visibility path for overdue work
- ERP reflection failure must surface in dashboard and detail views
- promised payment reminders should be available where collection policy uses promise tracking
- repeated notification storms should be avoided for unresolved items

delivery_policy:
- in-app visibility is baseline
- external delivery channels are optional by tenant capability
- notification content should avoid ambiguous wording about authority boundaries

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080200_NOTIFICATION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080210_APPROVED_BUSINESS_DECISIONS_POLICY.md -->
# ============================================================
# APPROVED BUSINESS DECISIONS POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Records approved business decisions that close prior open issues.

approved_decisions:

- decision_code: IF-APPROVED-001
  topic: receipt numbering format
  decision:
  - RCT-YYYYMMDD-serial
  examples:
  - RCT-20260413-0001
  - RCT-20260413-0002

- decision_code: IF-APPROVED-002
  topic: invoice PDF authority footer
  decision:
  - FRONT_LOCAL invoice PDF includes authority note
  - ERP_MASTER invoice PDF does not require the same note by default

- decision_code: IF-APPROVED-003
  topic: bank integration launch strategy
  decision:
  - initial launch uses CSV/file import first
  - API integration is later-phase expansion

- decision_code: IF-APPROVED-004
  topic: customer master source of truth
  decision:
  - ERP contract present: ERP is customer master authority
  - ERP contract absent: BusinessOS/application-side customer operation is allowed

- decision_code: IF-APPROVED-005
  topic: default send channels
  decision:
  - email
  - manual handoff
  - share link is optional later expansion

- decision_code: IF-APPROVED-006
  topic: post-send correction policy
  decision:
  - core invoice facts are locked after send
  - monetary/detail/customer/due-date/currency/language changes require cancel and recreate
  - non-core memo-like fields may be corrected under policy

- decision_code: IF-APPROVED-007
  topic: receipt reissue display rule
  decision:
  - reissue creates a new receipt number
  - prior receipt linkage is mandatory
  - reissued receipts should remain distinguishable

- decision_code: IF-APPROVED-008
  topic: multicurrency aggregation rule
  decision:
  - no implicit cross-currency aggregation
  - summary visibility is currency-separated by default

- decision_code: IF-APPROVED-009
  topic: language default priority
  decision:
  - customer preferred language
  - actor preference
  - tenant default
  - system default

- decision_code: IF-APPROVED-010
  topic: receipt issuing authority interpretation
  decision:
  - FRONT_LOCAL receipt issuance is application-led
  - ERP_MASTER receipt interpretation follows ERP-side authority policy where relevant

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080210_APPROVED_BUSINESS_DECISIONS_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080220_DOCUMENT_FOOTER_AND_NUMBERING_POLICY.md -->
# ============================================================
# DOCUMENT FOOTER AND NUMBERING POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes concrete document footer and numbering rules.

invoice_footer_policy:
- FRONT_LOCAL invoice PDF includes an authority note
- recommended note intent:
  - this invoice was issued from InvoiceFlow as a front-managed invoice
- wording may be localized per document language
- ERP_MASTER invoice does not automatically inherit the same footer note

receipt_numbering_policy:
- format is RCT-YYYYMMDD-serial
- serial is unique within company scope for the date policy used
- reissued receipt receives a new number
- prior receipt linkage remains mandatory

visibility_rules:
- receipt detail must show receipt number clearly
- reissue detail must show prior receipt number/linkage clearly
- invoice detail should expose FRONT_LOCAL vs ERP_MASTER clearly

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080220_DOCUMENT_FOOTER_AND_NUMBERING_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080230_CUSTOMER_MASTER_AND_SEND_POLICY.md -->
# ============================================================
# CUSTOMER MASTER AND SEND POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes customer master and default send behavior.

customer_master_policy:
- when ERP contract exists, ERP is the customer master authority
- when ERP contract does not exist, BusinessOS/application-side customer operation is allowed
- source-of-truth meaning must remain explicit when mixed contexts exist

default_send_policy:
- default send channels at launch:
  - email
  - manual handoff
- share link is later optional expansion
- send-channel enablement may remain tenant-configurable later

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080230_CUSTOMER_MASTER_AND_SEND_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080240_POST_SEND_CORRECTION_AND_REISSUE_POLICY.md -->
# ============================================================
# POST SEND CORRECTION AND REISSUE POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes post-send correction and reissue handling.

post_send_correction_policy:
- after send, core invoice facts are treated as locked
- locked facts include:
  - monetary values
  - line details
  - customer identity
  - due date
  - currency
  - language
- correction of locked facts requires cancel and recreate path
- limited non-core memo-like correction may be allowed under policy

receipt_reissue_policy:
- reissue creates a new receipt number
- original receipt remains historically visible
- prior linkage is mandatory
- reissue should remain visibly distinguishable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080240_POST_SEND_CORRECTION_AND_REISSUE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080250_LANGUAGE_AND_CURRENCY_DISPLAY_POLICY.md -->
# ============================================================
# LANGUAGE AND CURRENCY DISPLAY POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes language fallback and multicurrency display rules.

language_priority_policy:
- customer preferred language
- actor preference
- tenant default
- system default

currency_display_policy:
- currency must remain explicit
- cross-currency amounts must not be implicitly summed
- customer outstanding summaries remain currency-separated by default
- UI and PDF output must not replace explicit currency identity with locale-only assumption

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080250_LANGUAGE_AND_CURRENCY_DISPLAY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080260_FINAL_WORDING_AND_FORMAT_POLICY.md -->
# ============================================================
# FINAL WORDING AND FORMAT POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes the remaining wording, digit-width, and display-format details.

# ============================================================
# 1. FRONT_LOCAL INVOICE FOOTER WORDING
# ============================================================

front_local_invoice_footer_wording:
- ja-JP:
  この請求書は InvoiceFlow 上で発行されたフロント管理請求です。
- en-US:
  This invoice was issued from InvoiceFlow as a front-managed invoice.

footer_rules:
- footer is mandatory for FRONT_LOCAL invoice PDF
- footer is not mandatory for ERP_MASTER invoice PDF by default
- localized wording follows document language_code

# ============================================================
# 2. RECEIPT NUMBER SERIAL DIGITS
# ============================================================

receipt_number_format:
- RCT-YYYYMMDD-####

serial_digit_rule:
- serial uses 4 digits
- examples:
  - RCT-20260413-0001
  - RCT-20260413-0124
  - RCT-20260413-9999

overflow_rule:
- if daily serial exceeds 9999, implementation must fail closed
  or use an explicitly reviewed extension policy
- silent format change is forbidden

# ============================================================
# 3. REISSUE DISPLAY WORDING
# ============================================================

reissue_wording:
- ja-JP:
  再発行
- en-US:
  Reissued

reissue_visibility_rules:
- reissued receipt detail must show:
  - current receipt number
  - prior receipt number
  - reissue reason
  - reissue marker
- reissued receipt PDF should include the reissue marker

# ============================================================
# 4. AUTHORITY BADGE WORDING
# ============================================================

authority_badge_wording:
- FRONT_LOCAL:
  - ja-JP: FRONT_LOCAL
  - en-US: FRONT_LOCAL
- ERP_MASTER:
  - ja-JP: ERP_MASTER
  - en-US: ERP_MASTER

erp_eligibility_warning_wording:
- ja-JP:
  この請求は ERP正本反映対象外です。
- en-US:
  This invoice is not eligible for ERP master reflection.

# ============================================================
# 5. CURRENCY DISPLAY RULE
# ============================================================

currency_display_rule:
- currency code is always shown
- symbol-only display is forbidden for critical financial amounts
- recommended examples:
  - JPY 110,000
  - USD 1,250.00
  - EUR 980.50

currency_summary_rule:
- customer summaries remain currency-separated
- cross-currency totals must not be shown as one implicit sum

# ============================================================
# 6. LANGUAGE FALLBACK DISPLAY RULE
# ============================================================

language_fallback_rule:
- customer preferred language
- actor preference
- tenant default
- system default

fallback_display_rule:
- if exact localized copy is unavailable, fall back in the above order
- fallback must not silently change numeric/currency meaning
- document language_code must reflect actual generation language

# ============================================================
# 7. SHARE LINK RULE
# ============================================================

share_link_rule:
- share link is not enabled in initial launch default
- share link remains later optional expansion
- no hidden/partial share-link UI should appear before enablement

# ============================================================
# 8. FINAL INTERPRETATION
# ============================================================

final_interpretation:
Wording and formatting decisions are now fixed enough
that implementation does not need to invent display meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080260_FINAL_WORDING_AND_FORMAT_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080270_FINAL_DISPLAY_RULES_POLICY.md -->
# ============================================================
# FINAL DISPLAY RULES POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes final display-level rules for the application.

display_rules:
- authority badge must be shown on invoice list and invoice detail
- ERP eligibility warning must be shown on FRONT_LOCAL invoice detail
- outstanding amount must be shown with currency code
- overdue days must be shown in collection contexts
- receipt detail must show linked invoice and linked payment together
- reissued receipt must show prior receipt linkage
- unresolved bank candidate must show ambiguity state clearly
- destructive/elevated actions must remain visually separated

phone_layout_rules:
- top warning area must remain above fold where possible
- authority badge must remain near invoice summary
- next_action_date must remain visible in collection detail

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080270_FINAL_DISPLAY_RULES_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080_INVOICE_FLOW_POLICY.md -->
# ============================================================
# INVOICE FLOW POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

policy_core:
- invoice authority must be explicit
- payment confirmation source must be explicit
- receipt issuance must be traceable
- collection priority must be explainable
- reflection boundaries must be enforced
- multilingual policy must be enforced
- multicurrency policy must be enforced
- multi-device policy must be enforced

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080_INVOICE_FLOW_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080_INVOICE_FLOW_POLICY_INDEX.md -->
# ============================================================
# INVOICE FLOW POLICY INDEX
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 080_INVOICE_FLOW_POLICY_OVERVIEW.md
- 080_INVOICE_FLOW_POLICY_INDEX.md
- 080_INVOICE_FLOW_POLICY.md
- 080110_INVOICE_AUTHORITY_POLICY.md
- 080120_RECEIPT_POLICY.md
- 080130_COLLECTION_PRIORITY_POLICY.md
- 080140_FAIL_CLOSED_POLICY.md
- 080150_COMPETITIVE_DIFFERENTIATION_POLICY.md
- 080160_DOCUMENT_NUMBERING_POLICY.md
- 080170_DOCUMENT_TEMPLATE_POLICY.md
- 080180_SIMPLE_RECONCILIATION_POLICY.md
- 080190_DATA_RETENTION_AND_CORRECTION_POLICY.md
- 080200_NOTIFICATION_POLICY.md
- 080210_APPROVED_BUSINESS_DECISIONS_POLICY.md
- 080220_DOCUMENT_FOOTER_AND_NUMBERING_POLICY.md
- 080230_CUSTOMER_MASTER_AND_SEND_POLICY.md
- 080240_POST_SEND_CORRECTION_AND_REISSUE_POLICY.md
- 080250_LANGUAGE_AND_CURRENCY_DISPLAY_POLICY.md
- 080260_FINAL_WORDING_AND_FORMAT_POLICY.md
- 080270_FINAL_DISPLAY_RULES_POLICY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080_INVOICE_FLOW_POLICY_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080_INVOICE_FLOW_POLICY_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Policy governs invoice authority,
receipt rules,
collection priority,
and fail-closed behavior.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/080.policy/080_INVOICE_FLOW_POLICY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090110_SCREEN_LIST_INTERFACE.md -->
# ============================================================
# SCREEN LIST INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the full screen list and screen purpose.

screens:

- screen_id: IF-SCR-001
  screen_name: Login
  purpose:
  - authenticate user
  - resolve company scope
  - load role and permission context

- screen_id: IF-SCR-010
  screen_name: Dashboard
  purpose:
  - show today's invoice/payment/collection workload
  - show operational alerts
  - provide direct jump to urgent work

- screen_id: IF-SCR-020
  screen_name: Invoice List
  purpose:
  - search and filter invoices
  - show invoice authority and ERP eligibility
  - show payment/overdue status

- screen_id: IF-SCR-030
  screen_name: Invoice Detail
  purpose:
  - show invoice facts
  - show invoice PDF/send/payment/collection state
  - provide next-action entry points

- screen_id: IF-SCR-040
  screen_name: Create Front Invoice
  purpose:
  - create FRONT_LOCAL invoice
  - enter line items
  - generate invoice PDF

- screen_id: IF-SCR-050
  screen_name: ERP Master Invoice Reference
  purpose:
  - display ERP-master invoice facts
  - show ERP authority badge
  - support payment/collection follow-up

- screen_id: IF-SCR-060
  screen_name: Bank Matching
  purpose:
  - review imported bank transaction candidates
  - confirm payment from bank-linked route
  - resolve ambiguous matches

- screen_id: IF-SCR-070
  screen_name: Manual Payment Confirmation
  purpose:
  - confirm payment manually
  - support hand-delivery and equivalent cases
  - trigger receipt flow when allowed

- screen_id: IF-SCR-080
  screen_name: Collection Dashboard
  purpose:
  - show overdue workload
  - show priority collection queue
  - show customer outstanding summary

- screen_id: IF-SCR-090
  screen_name: Collection Detail
  purpose:
  - record dunning history
  - set next action
  - manage promise-to-pay and escalation

- screen_id: IF-SCR-100
  screen_name: Receipt Detail
  purpose:
  - show receipt facts
  - show linked invoice and payment
  - allow reissue when policy permits

- screen_id: IF-SCR-110
  screen_name: Settings
  purpose:
  - configure display and operation preferences
  - configure notification behavior
  - show connected services status

cross_screen_requirements:
- all screens support multilingual labels and messages
- all monetary displays preserve currency code/symbol policy
- all screens are available for iphone, android, pc, and tablet form factors
- invoice authority distinction must remain visible on critical screens

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090110_SCREEN_LIST_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090120_DASHBOARD_INTERFACE.md -->
# ============================================================
# DASHBOARD INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the dashboard widget structure and actions.

screen_id: IF-SCR-010

main_widgets:

- widget_name: invoice_due_today
  display:
  - count
  - total_amount
  - currency_group_summary
  action:
  - open filtered invoice list

- widget_name: payment_waiting_count
  display:
  - count
  - total_outstanding_amount
  action:
  - open payment waiting list

- widget_name: overdue_count
  display:
  - count
  - overdue_total_amount
  - max_overdue_days
  action:
  - open overdue list

- widget_name: priority_collection_queue
  display:
  - top priority invoices
  - priority rank
  - next action date
  - overdue days
  action:
  - open collection detail

- widget_name: customer_outstanding_top_list
  display:
  - customer name
  - outstanding amount
  - overdue amount
  - oldest overdue days
  action:
  - open customer-related invoice list

- widget_name: bank_match_pending_review
  display:
  - pending count
  - unmatched amount
  action:
  - open bank matching screen

- widget_name: recent_receipt_issuance
  display:
  - receipt number
  - issue date
  - linked invoice
  action:
  - open receipt detail

header_actions:
- search
- filter
- refresh
- notification access

visibility_rules:
- urgent widgets appear above informational widgets
- overdue and collection widgets must stay above fold on smartphone where possible

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090120_DASHBOARD_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090130_INVOICE_DETAIL_INTERFACE.md -->
# ============================================================
# INVOICE DETAIL INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines invoice detail screen fields and actions.

screen_id: IF-SCR-030

sections:

- section_name: invoice_summary
  fields:
  - invoice_case_id
  - invoice_number_local
  - erp_invoice_number
  - title
  - customer_name
  - language_code
  - currency_code
  - invoice_date
  - payment_due_date
  - subtotal_amount
  - tax_amount
  - total_amount

- section_name: authority_and_status
  fields:
  - invoice_origin_type
  - invoice_authority_type
  - erp_link_eligibility
  - invoice_status_code
  - collection_status_code
  - overdue_days
  - priority_collection_flag
  display_rules:
  - FRONT_LOCAL badge must be obvious
  - ERP_MASTER badge must be obvious
  - ERP non-eligible warning must be obvious

- section_name: line_items
  fields:
  - line_no
  - item_name
  - quantity
  - unit_price
  - tax_code
  - line_amount
  - remarks

- section_name: document_actions
  actions:
  - generate_invoice_pdf
  - view_invoice_pdf
  - request_send
  - view_send_history

- section_name: payment_and_collection
  fields:
  - payment_status_summary
  - confirmed_amount_total
  - outstanding_amount
  - collection_due_date
  - next_action_date
  actions:
  - go_to_payment_confirmation
  - go_to_collection_detail

- section_name: receipt_history
  fields:
  - receipt_number
  - issued_at
  - receipt_status_code
  actions:
  - open_receipt_detail

- section_name: erp_reflection
  fields:
  - reflection_status
  - last_reflection_at
  - last_reflection_error
  actions:
  - request_reflection_when_allowed

primary_actions:
- edit_front_invoice_when_allowed
- generate_or_view_pdf
- request_send
- confirm_payment
- open_collection
- open_receipt

blocking_notices:
- front-created invoice cannot become ERP invoice master
- ERP reflection eligibility must be checked before reflective action

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090130_INVOICE_DETAIL_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md -->
# ============================================================
# PAYMENT CONFIRMATION INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines payment confirmation screen structure.

screen_ids:
- IF-SCR-060
- IF-SCR-070

common_fields:
- invoice_case_id
- invoice_number_local
- erp_invoice_number
- customer_name
- currency_code
- invoice_total_amount
- confirmed_amount_total
- outstanding_amount
- payment_due_date
- invoice_status_code

bank_linked_section:
  fields:
  - bank_account_name
  - transaction_date
  - transaction_name
  - transaction_amount
  - candidate_confidence
  - bank_transaction_id
  actions:
  - accept_candidate
  - reject_candidate
  - mark_for_review

manual_section:
  fields:
  - confirmed_payment_date
  - confirmed_amount
  - fee_amount
  - difference_amount
  - manual_receipt_note
  - evidence_file_id
  - confirmed_by
  actions:
  - confirm_manually
  - save_draft_if_supported

reconciliation_section:
  fields:
  - matched_amount
  - difference_amount
  - reconciliation_status_code
  - partial_payment_flag
  display_rules:
  - difference and partial states must be highlighted

receipt_section:
  fields:
  - receipt_policy_state
  - existing_receipt_count
  actions:
  - issue_receipt_when_allowed

warnings:
- ambiguous bank match must not auto-finalize
- manual confirmation requires actor traceability
- receipt requires confirmed payment

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md -->
# ============================================================
# COLLECTION DASHBOARD INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines collection dashboard and collection detail interface requirements.

screen_ids:
- IF-SCR-080
- IF-SCR-090

collection_dashboard_widgets:

- widget_name: overdue_list
  fields:
  - invoice_number
  - customer_name
  - total_amount
  - outstanding_amount
  - overdue_days
  - next_action_date
  - priority_rank_code

- widget_name: collection_due_list
  fields:
  - invoice_number
  - customer_name
  - collection_due_date
  - next_action_date
  - action_owner

- widget_name: priority_queue
  fields:
  - invoice_number
  - customer_name
  - priority_rank_code
  - priority_reason_summary
  - overdue_days
  - outstanding_amount

- widget_name: dunning_history_panel
  fields:
  - latest_action_date
  - latest_action_type
  - latest_response_summary
  - promised_payment_date

- widget_name: customer_outstanding_summary
  fields:
  - customer_name
  - total_outstanding_amount
  - overdue_outstanding_amount
  - oldest_overdue_days
  - priority_rank_code

collection_detail_sections:

- section_name: collection_target_summary
  fields:
  - invoice_number
  - customer_name
  - outstanding_amount
  - overdue_days
  - collection_status_code
  - priority_rank_code

- section_name: action_history
  fields:
  - action_date
  - action_type_code
  - action_owner_user_id
  - action_note
  - response_summary

- section_name: next_action_plan
  fields:
  - next_action_date
  - collection_due_date
  - promised_payment_date
  - escalation_required_flag
  actions:
  - save_action
  - mark_promised
  - mark_escalated
  - mark_resolved

design_rules:
- priority reason must be understandable by operators
- overdue facts must be visible before history details

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090160_RECEIPT_INTERFACE.md -->
# ============================================================
# RECEIPT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines receipt detail and receipt action interface.

screen_id: IF-SCR-100

sections:

- section_name: receipt_summary
  fields:
  - receipt_issue_id
  - receipt_number
  - issue_type_code
  - language_code
  - currency_code
  - issued_at
  - issued_by
  - receipt_status_code

- section_name: linked_payment
  fields:
  - payment_confirmation_id
  - confirmation_source_type
  - confirmed_payment_date
  - confirmed_amount
  - fee_amount
  - difference_amount

- section_name: linked_invoice
  fields:
  - invoice_case_id
  - invoice_number_local
  - erp_invoice_number
  - customer_name
  - invoice_authority_type

- section_name: actions
  actions:
  - view_receipt_pdf
  - reissue_receipt_when_allowed

- section_name: history
  fields:
  - prior_receipt_number
  - prior_issue_date
  - reissue_reason
  - actor

design_rules:
- receipt and linked payment must be understandable on one screen
- reissue must not hide original linkage

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090160_RECEIPT_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090170_COMPETITIVE_INTERFACE_REQUIREMENTS.md -->
# ============================================================
# COMPETITIVE INTERFACE REQUIREMENTS
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines interface requirements derived from competitive positioning.

# ============================================================
# 1. VISIBILITY REQUIREMENTS
# ============================================================

visibility_requirements:
- invoice authority badge must be large and obvious
- ERP non-eligible front invoice must be clearly marked
- overdue state must be visible without entering detail screens
- collection priority must be visible in list and dashboard contexts
- payment confirmation route must be visible in history

# ============================================================
# 2. ACTION REQUIREMENTS
# ============================================================

action_requirements:
- invoice detail must allow direct transition to payment confirmation
- unpaid invoice detail must allow direct transition to collection handling
- confirmed payment detail must allow direct transition to receipt issuance
- operator must not need deep navigation to understand next action

# ============================================================
# 3. DASHBOARD REQUIREMENTS
# ============================================================

dashboard_requirements:
- dashboard must show unpaid and overdue workload
- dashboard must show priority collection queue
- dashboard must show pending bank-match review
- dashboard must show recent receipt issuance activity
- dashboard must work on smartphone, tablet, and PC layouts

# ============================================================
# 4. LIST REQUIREMENTS
# ============================================================

list_requirements:
- invoice list must show authority type
- invoice list must show ERP reflection eligibility
- invoice list must show overdue days
- invoice list must show outstanding amount
- collection list must show next action date
- collection list must show priority reason or priority rank

# ============================================================
# 5. DOCUMENT REQUIREMENTS
# ============================================================

document_requirements:
- invoice PDF actions must be easy to locate
- receipt PDF actions must be easy to locate
- multilingual expansion must not collapse key controls
- multicurrency display must remain unambiguous

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090170_COMPETITIVE_INTERFACE_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090330_INVOICEFLOW_BILLING_COCKPIT_INTERFACE.md -->
# ============================================================
# INVOICEFLOW BILLING COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-cockpit-interface

purpose:
Makes the billing cockpit screen hierarchy explicit.

screen_goal:
- show what threatens settlement or downstream finance handoff right now
- unify pending approvals, settlement blockers, and finance readiness
- provide one financial-control review pass before diving into detail screens

screen_sections:
- invoice summary header
- pending approval stack
- settlement blocker stack
- downstream finance panel
- quick jump to settlement exception review

item_card_fields:
- item title
- short summary
- state badge
- due time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open invoice detail
- open exception review
- open approval review
- approve
- hold
- open downstream finance detail

interface_rules:
- pending approvals must be separated visually from settlement blockers
- downstream finance items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- line editing belongs elsewhere; cockpit is a control surface first

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090330_INVOICEFLOW_BILLING_COCKPIT_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090_INVOICE_FLOW_INTERFACE.md -->
# ============================================================
# INVOICE FLOW INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main user-facing interface structure of InvoiceFlow.

# ============================================================
# 1. PRIMARY SCREENS
# ============================================================

primary_screens:
- login
- dashboard
- invoice list
- invoice detail
- create front invoice
- ERP-master invoice reference
- bank matching
- manual payment confirmation
- collection dashboard
- collection detail
- receipt detail
- settings

# ============================================================
# 2. DASHBOARD
# ============================================================

dashboard_widgets:
- invoice due today
- payment waiting count
- overdue count
- priority collection queue
- customer outstanding top list
- recent receipt issuance
- bank matching pending review count

# ============================================================
# 3. INVOICE DETAIL
# ============================================================

invoice_detail_sections:
- invoice summary
- line items
- invoice authority badge
- invoice PDF action
- send request/history
- payment status
- collection status
- receipt history
- ERP reflection status

invoice_authority_badges:
- FRONT_LOCAL
- ERP_MASTER

# ============================================================
# 4. PAYMENT CONFIRMATION
# ============================================================

payment_confirmation_sections:
- confirmation source selector
- bank match candidate area
- manual confirmation form
- reconciliation summary
- receipt issuance action
- audit hint/status

confirmation_sources:
- BANK_LINKED
- MANUAL

# ============================================================
# 5. COLLECTION
# ============================================================

collection_dashboard_sections:
- overdue list
- collection due list
- priority queue
- dunning history panel
- customer outstanding summary
- escalation candidate panel

collection_detail_sections:
- invoice summary
- overdue facts
- collection history
- promise-to-pay record
- next action setting
- priority reason display

# ============================================================
# 6. RECEIPT
# ============================================================

receipt_sections:
- receipt summary
- linked payment confirmation
- linked invoice
- issue/reissue history
- PDF action

# ============================================================
# 7. GLOBAL INTERFACE REQUIREMENTS
# ============================================================

interface_root_requirements:
- multilingual UI expansion must be supported
- multicurrency display must be supported
- iphone layout must be supported
- android layout must be supported
- pc layout must be supported
- tablet layout must be supported
- screen design must be adaptive or responsive across device classes
- invoice authority distinction must be visibly clear
- ERP non-eligible front invoice must be visibly clear

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090_INVOICE_FLOW_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090_INVOICE_FLOW_INTERFACE_INDEX.md -->
# ============================================================
# INVOICE FLOW INTERFACE INDEX
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 090_INVOICE_FLOW_INTERFACE_OVERVIEW.md
- 090_INVOICE_FLOW_INTERFACE_INDEX.md
- 090_INVOICE_FLOW_INTERFACE.md
- 090110_SCREEN_LIST_INTERFACE.md
- 090120_DASHBOARD_INTERFACE.md
- 090130_INVOICE_DETAIL_INTERFACE.md
- 090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 090150_COLLECTION_DASHBOARD_INTERFACE.md
- 090160_RECEIPT_INTERFACE.md
- 090170_COMPETITIVE_INTERFACE_REQUIREMENTS.md

- 090330_INVOICEFLOW_BILLING_COCKPIT_INTERFACE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090_INVOICE_FLOW_INTERFACE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090_INVOICE_FLOW_INTERFACE_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Interface covers dashboard,
invoice detail,
payment confirmation,
collection dashboard,
and receipt screens.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/090.interface/090_INVOICE_FLOW_INTERFACE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100110_ROLE_DEFINITION_SECURITY.md -->
# ============================================================
# ROLE DEFINITION SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main operator roles for InvoiceFlow.

roles:

- role_code: IF_VIEWER
  role_name: Viewer
  purpose:
  - read-only visibility
  - monitor invoice/payment/collection status

- role_code: IF_OPERATOR
  role_name: Operator
  purpose:
  - daily invoice front operation
  - payment confirmation operation
  - collection action recording

- role_code: IF_COLLECTION_OPERATOR
  role_name: Collection Operator
  purpose:
  - overdue follow-up
  - dunning action management
  - priority collection handling

- role_code: IF_RECEIPT_OPERATOR
  role_name: Receipt Operator
  purpose:
  - receipt issuance
  - receipt reissue handling

- role_code: IF_MANAGER
  role_name: Manager
  purpose:
  - approval and override decisions
  - exception resolution
  - escalation control

- role_code: IF_FINANCE
  role_name: Finance
  purpose:
  - payment confirmation oversight
  - reflection oversight
  - receipt/accounting coordination

- role_code: IF_ADMIN
  role_name: Admin
  purpose:
  - tenant-level configuration
  - service connection visibility
  - permission management support

core_rules:
- all roles are company-scoped
- ERP reflection rights are narrower than normal edit rights
- receipt reissue rights are narrower than receipt view rights
- manual payment confirmation rights are narrower than invoice view rights

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100110_ROLE_DEFINITION_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100120_SCREEN_PERMISSION_MATRIX_SECURITY.md -->
# ============================================================
# SCREEN PERMISSION MATRIX SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines screen-level access permissions.

matrix:

- screen_id: IF-SCR-010
  screen_name: Dashboard
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: view
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-020
  screen_name: Invoice List
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: view
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-030
  screen_name: Invoice Detail
  access:
    IF_VIEWER: view
    IF_OPERATOR: edit_limited
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: edit
    IF_FINANCE: edit_limited
    IF_ADMIN: view

- screen_id: IF-SCR-040
  screen_name: Create Front Invoice
  access:
    IF_VIEWER: none
    IF_OPERATOR: create
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: create
    IF_FINANCE: create_limited
    IF_ADMIN: none

- screen_id: IF-SCR-050
  screen_name: ERP Master Invoice Reference
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: view
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-060
  screen_name: Bank Matching
  access:
    IF_VIEWER: none
    IF_OPERATOR: edit_limited
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: edit
    IF_FINANCE: edit
    IF_ADMIN: view

- screen_id: IF-SCR-070
  screen_name: Manual Payment Confirmation
  access:
    IF_VIEWER: none
    IF_OPERATOR: create_limited
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: create
    IF_FINANCE: create
    IF_ADMIN: none

- screen_id: IF-SCR-080
  screen_name: Collection Dashboard
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: edit_limited
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: edit
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-090
  screen_name: Collection Detail
  access:
    IF_VIEWER: view
    IF_OPERATOR: edit_limited
    IF_COLLECTION_OPERATOR: edit
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: edit
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-100
  screen_name: Receipt Detail
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: edit
    IF_MANAGER: edit
    IF_FINANCE: edit
    IF_ADMIN: view

- screen_id: IF-SCR-110
  screen_name: Settings
  access:
    IF_VIEWER: none
    IF_OPERATOR: none
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: view_limited
    IF_FINANCE: view_limited
    IF_ADMIN: edit

notes:
- edit_limited means action-limited editing within role scope
- create_limited means creation without broad override authority

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100120_SCREEN_PERMISSION_MATRIX_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md -->
# ============================================================
# ACTION PERMISSION MATRIX SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines action-level permissions.

actions:

- action_code: CREATE_FRONT_INVOICE
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow_limited
    IF_ADMIN: deny

- action_code: EDIT_FRONT_INVOICE_BEFORE_SEND
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow_limited
    IF_ADMIN: deny

- action_code: GENERATE_INVOICE_PDF
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: REQUEST_INVOICE_SEND
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: CONFIRM_PAYMENT_BANK_MATCH
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow_limited
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: CONFIRM_PAYMENT_MANUAL
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow_limited
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: RECORD_COLLECTION_ACTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow_limited
    IF_COLLECTION_OPERATOR: allow
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: deny
    IF_ADMIN: deny

- action_code: SET_PRIORITY_COLLECTION_FLAG
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: allow_limited
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: deny
    IF_ADMIN: deny

- action_code: ISSUE_RECEIPT
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: allow
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: REISSUE_RECEIPT
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: allow_limited
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: REQUEST_ERP_PAYMENT_REFLECTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: RETRY_ERP_PAYMENT_REFLECTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: OVERRIDE_DIFFERENCE_RESOLUTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

notes:
- allow_limited means scoped by policy and target state
- deny means no execution right even if screen is visible

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md -->
# ============================================================
# EXCEPTION AND APPROVAL BOUNDARY SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines approval and exception boundaries.

approval_boundaries:
- manual payment confirmation with material difference may require manager or finance review
- receipt reissue requires explicit reason and elevated permission
- ERP payment reflection requires elevated permission
- override of ambiguous bank match requires elevated permission
- escalation closure may require manager authority depending on policy

exception_rules:
- no one may convert FRONT_LOCAL into ERP_MASTER
- no one may bypass shared BusinessOS boundary for ERP reflection
- no one may issue receipt without confirmed payment
- no one may hide prior receipt linkage on reissue
- no one may finalize ambiguous bank match automatically

audit_requirements:
- all elevated actions must write audit log
- all receipt reissues must write audit log
- all ERP reflection retries must write audit log
- all override resolutions must write audit log

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100_INVOICE_FLOW_SECURITY.md -->
# ============================================================
# INVOICE FLOW SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

security_rules:
- company-scoped access is mandatory
- payment confirmation requires elevated action permission
- receipt issuance requires traceable actor
- ERP reflection requires explicit capability permission

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100_INVOICE_FLOW_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100_INVOICE_FLOW_SECURITY_INDEX.md -->
# ============================================================
# INVOICE FLOW SECURITY INDEX
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 100_INVOICE_FLOW_SECURITY_OVERVIEW.md
- 100_INVOICE_FLOW_SECURITY_INDEX.md
- 100_INVOICE_FLOW_SECURITY.md
- 100110_ROLE_DEFINITION_SECURITY.md
- 100120_SCREEN_PERMISSION_MATRIX_SECURITY.md
- 100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100_INVOICE_FLOW_SECURITY_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100_INVOICE_FLOW_SECURITY_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW SECURITY OVERVIEW
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Security protects invoice visibility,
payment confirmation actions,
receipt issuance,
and ERP reflection boundaries.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/100.security/100_INVOICE_FLOW_SECURITY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110110_NON_FUNCTIONAL_REQUIREMENTS.md -->
# ============================================================
# NON FUNCTIONAL REQUIREMENTS
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines non-functional requirements for InvoiceFlow.

availability_requirements:
- core invoice and payment visibility should tolerate ordinary retry/reload behavior
- operator-critical screens should fail clearly, not silently

performance_requirements:
- invoice list should support practical operational paging
- dashboard should prioritize urgent widget rendering
- overdue and priority collection lists should remain usable at operational scale
- candidate bank-match queries should be index-aware

security_requirements:
- company scope isolation is mandatory
- elevated actions require audit trail
- authority boundary violations must fail closed

usability_requirements:
- critical warning badges must remain visible on smartphone and tablet
- next action should be understandable without deep navigation
- multi-device adaptation is mandatory

document_requirements:
- PDF generation should be deterministic for the same approved input
- document language and currency must remain explicit

audit_requirements:
- state-changing financial actions must be traceable
- reissue and override actions must be traceable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110110_NON_FUNCTIONAL_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110120_MULTI_DEVICE_LAYOUT_REQUIREMENTS.md -->
# ============================================================
# MULTI DEVICE LAYOUT REQUIREMENTS
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines layout requirements across device classes.

device_classes:
- iphone
- android_phone
- tablet
- pc

layout_rules:
- dashboard top priority widgets must remain visible on phone
- invoice authority and ERP eligibility badges must remain above fold on detail screens where possible
- collection next-action controls must not be hidden behind desktop-only patterns
- wide-table data should have mobile fallback presentation
- destructive or elevated actions should remain separated from routine actions

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110120_MULTI_DEVICE_LAYOUT_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE.md -->
# ============================================================
# INVOICE FLOW INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

dependencies:
- application data store
- PDF generation/storage service
- bank transaction ingestion service
- shared ERP reflection service
- notification service

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE_INDEX.md -->
# ============================================================
# INVOICE FLOW INFRASTRUCTURE INDEX
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 110_INVOICE_FLOW_INFRASTRUCTURE_OVERVIEW.md
- 110_INVOICE_FLOW_INFRASTRUCTURE_INDEX.md
- 110_INVOICE_FLOW_INFRASTRUCTURE.md
- 110110_NON_FUNCTIONAL_REQUIREMENTS.md
- 110120_MULTI_DEVICE_LAYOUT_REQUIREMENTS.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Infrastructure supports storage,
PDF generation dependency,
bank import dependency,
and shared ERP reflection dependency.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/110.infrastructure/110_INVOICE_FLOW_INFRASTRUCTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120110_IMPLEMENTATION_ROADMAP.md -->
# ============================================================
# IMPLEMENTATION ROADMAP
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended implementation roadmap for InvoiceFlow.

roadmap_principles:
- implement authority boundary first
- implement state-bearing core tables before UI polish
- implement FRONT_LOCAL flow before ERP reflection edge cases
- implement manual confirmation before bank-linked confirmation automation
- implement receipt issuance after payment confirmation is stable
- implement collection management as first-class, not as last-minute add-on
- keep multilingual, multicurrency, and multi-device assumptions from phase start

implementation_order:
1. authority and base persistence
2. front invoice core flow
3. manual payment confirmation
4. receipt issuance
5. collection dashboard and collection actions
6. bank transaction import and bank match review
7. ERP payment reflection
8. advanced refinement and operator optimization

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120110_IMPLEMENTATION_ROADMAP.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120120_PHASE_BREAKDOWN.md -->
# ============================================================
# PHASE BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation phases for InvoiceFlow.

phases:

- phase_code: IF-PHASE-01
  phase_name: Authority And Base Model
  scope:
  - invoice authority boundary
  - invoice_case base persistence
  - invoice_line base persistence
  - status code handling
  - company scope enforcement

- phase_code: IF-PHASE-02
  phase_name: Front Invoice Core
  scope:
  - create FRONT_LOCAL invoice
  - edit front invoice before send
  - invoice list
  - invoice detail
  - invoice PDF generation
  - send request registration

- phase_code: IF-PHASE-03
  phase_name: Manual Payment Confirmation
  scope:
  - manual payment confirmation
  - difference handling
  - partial payment handling
  - invoice status update from payment result

- phase_code: IF-PHASE-04
  phase_name: Receipt Issuance
  scope:
  - receipt issuance
  - receipt detail
  - receipt PDF
  - receipt reissue with audit trail

- phase_code: IF-PHASE-05
  phase_name: Collection Management
  scope:
  - overdue detection
  - collection dashboard
  - collection detail
  - collection action history
  - priority collection flag
  - customer outstanding summary

- phase_code: IF-PHASE-06
  phase_name: Bank Match Flow
  scope:
  - bank transaction import
  - candidate list
  - bank match confirmation
  - ambiguous match review

- phase_code: IF-PHASE-07
  phase_name: ERP Reflection
  scope:
  - ERP_MASTER invoice reference
  - payment-result reflection request
  - reflection result retrieval
  - retry and audit visibility

- phase_code: IF-PHASE-08
  phase_name: Refinement And Operator Optimization
  scope:
  - saved filters
  - dashboard refinements
  - performance indexes
  - device optimization
  - multilingual and multicurrency edge-case review

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120120_PHASE_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120130_MVP_DEFINITION.md -->
# ============================================================
# MVP DEFINITION
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the smallest meaningful release of InvoiceFlow.

mvp_goal:
Support practical FRONT_LOCAL invoice operation,
manual payment confirmation,
receipt issuance,
and basic collection follow-up
without requiring ERP adoption.

mvp_in_scope:
- company-scoped login and basic permission enforcement
- invoice list
- invoice detail
- create FRONT_LOCAL invoice
- invoice PDF generation
- send request registration
- manual payment confirmation
- partial and difference handling
- receipt issuance
- overdue detection
- collection action recording
- collection dashboard basic view

mvp_out_of_scope:
- bank transaction import automation
- ERP payment reflection
- advanced saved filters
- deep performance tuning
- advanced reporting packs

mvp_reasoning:
This gives standalone value for ERP non-contract users
and also creates the stable operational front needed
before bank and ERP-connected phases.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120130_MVP_DEFINITION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120140_PHASE_EXIT_CRITERIA.md -->
# ============================================================
# PHASE EXIT CRITERIA
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions for each phase.

exit_criteria:

- phase_code: IF-PHASE-01
  done_when:
  - invoice authority fields are persisted
  - company scope is enforced
  - core statuses are readable and writable
  - FRONT_LOCAL and ERP_MASTER are distinguishable in API and UI

- phase_code: IF-PHASE-02
  done_when:
  - operator can create and edit FRONT_LOCAL invoice
  - invoice PDF can be generated
  - invoice list and detail are usable on phone and PC
  - send request can be recorded

- phase_code: IF-PHASE-03
  done_when:
  - operator can confirm manual payment
  - partial and difference states are reflected
  - invoice status updates correctly

- phase_code: IF-PHASE-04
  done_when:
  - confirmed payment can issue receipt
  - receipt detail and reissue audit are visible
  - receipt PDF is generated

- phase_code: IF-PHASE-05
  done_when:
  - overdue items appear in collection queue
  - collection action history can be recorded
  - next action date and promise date are visible
  - customer outstanding summary is visible

- phase_code: IF-PHASE-06
  done_when:
  - bank transactions are stored
  - candidates are listed
  - ambiguous matches require operator decision
  - confirmed bank matches update payment state

- phase_code: IF-PHASE-07
  done_when:
  - ERP_MASTER invoice reference works
  - eligible payment reflection can be requested
  - result status can be retrieved
  - retries and failures are visible and audited

- phase_code: IF-PHASE-08
  done_when:
  - saved filters work
  - top operational screens are optimized for iphone, android, tablet, and pc
  - multilingual and multicurrency review issues are closed

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120140_PHASE_EXIT_CRITERIA.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120150_RISKS_AND_FRONTLOADED_DECISIONS.md -->
# ============================================================
# RISKS AND FRONTLOADED DECISIONS
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Captures implementation risks and items that should be decided early.

frontloaded_decisions:
- invoice PDF template policy
- receipt number generation policy
- bank account integration strategy
- ERP reflection boundary contract owner
- customer master source of truth
- send request delivery channel strategy
- language fallback policy
- currency display and rounding policy

major_risks:
- authority boundary becomes blurred between FRONT_LOCAL and ERP_MASTER
- manual payment confirmation is over-permissive
- receipt issuance occurs without solid payment linkage
- bank match false positives create operational confusion
- ERP reflection is attempted on non-eligible invoices
- collection management is under-modeled and becomes unusable in practice
- mobile layouts hide critical warnings or next actions

risk_reduction_rules:
- keep authority badge and ERP eligibility visible from early UI versions
- require audit trail on elevated actions from first implementation
- delay automation when certainty is weak
- prefer explicit status fields over inferred behavior

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120150_RISKS_AND_FRONTLOADED_DECISIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120160_IMPLEMENTATION_TASK_BREAKDOWN_OVERVIEW.md -->
# ============================================================
# IMPLEMENTATION TASK BREAKDOWN OVERVIEW
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the implementation task breakdown structure for InvoiceFlow.

breakdown_principles:
- tasks are grouped by implementation phase
- each phase includes backend, frontend, data, test, and review perspectives
- authority boundary safety takes priority over speed
- additive-only implementation is preferred where possible
- no task may blur FRONT_LOCAL and ERP_MASTER meaning

task_group_types:
- backend
- frontend
- data
- test
- review

recommended_execution_rule:
- complete one phase meaningfully before opening many unfinished later-phase branches

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120160_IMPLEMENTATION_TASK_BREAKDOWN_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120170_PHASE_01_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 01 TASK BREAKDOWN
# Authority And Base Model
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-01

backend_tasks:
- define invoice_case repository and service boundary
- define invoice_line repository and service boundary
- enforce company scope in all read/write entry points
- enforce invoice_authority_type persistence
- enforce erp_link_eligibility persistence
- expose minimal invoice create/read APIs for FRONT_LOCAL
- expose invoice detail read API with authority fields

frontend_tasks:
- prepare invoice list base screen shell
- prepare invoice detail base screen shell
- render authority badge on invoice detail
- render ERP eligibility warning area
- support multilingual labels at screen root
- support multicurrency display formatting at screen root

data_tasks:
- create invoice_case table
- create invoice_line table
- create core indexes for invoice_case
- verify enum-like status field values
- verify unique handling for invoice_number_local

test_tasks:
- test company scope isolation
- test FRONT_LOCAL persistence
- test ERP_MASTER read visibility path
- test invalid authority write rejection
- test payment_due_date validation

review_tasks:
- review authority field completeness
- review invoice_case physical design alignment
- review API and DB field naming consistency

phase_completion_focus:
- authority boundary is visible and stored correctly

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120170_PHASE_01_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120180_PHASE_02_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 02 TASK BREAKDOWN
# Front Invoice Core
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-02

backend_tasks:
- implement create front invoice API
- implement get invoice list API
- implement get invoice detail API
- implement invoice PDF generation request handling
- implement send request registration handling
- update invoice status transitions from DRAFT to PDF_READY to SENT_REQUESTED

frontend_tasks:
- implement create front invoice screen
- implement invoice list filtering and sorting basics
- implement invoice detail summary and line item display
- implement document action buttons
- implement obvious FRONT_LOCAL / ERP_MASTER badges
- implement visible ERP non-eligible messaging for FRONT_LOCAL

data_tasks:
- create invoice_delivery_request table if not already created
- connect pdf_document_id persistence
- verify list query indexes for status and due date

test_tasks:
- test front invoice creation success path
- test invoice PDF generation success path
- test send request blocked when PDF missing
- test invoice list filtering by status and authority
- test invoice detail rendering of authority and ERP eligibility

review_tasks:
- review front invoice UX realism
- review PDF generation preconditions
- review send request wording and visibility

phase_completion_focus:
- operator can complete basic FRONT_LOCAL invoice operation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120180_PHASE_02_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120190_PHASE_03_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 03 TASK BREAKDOWN
# Manual Payment Confirmation
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-03

backend_tasks:
- implement manual payment confirmation API
- compute difference_amount and partial handling
- update invoice status from payment result
- enforce permission checks for manual confirmation
- write audit event for manual confirmation

frontend_tasks:
- implement manual payment confirmation screen
- display outstanding amount and difference clearly
- support evidence attachment reference field
- show receipt readiness after confirmed payment
- show blocking errors clearly

data_tasks:
- create payment_confirmation table
- connect payment_confirmation to invoice_case
- index payment confirmation by invoice and date

test_tasks:
- test full payment manual confirmation
- test partial payment manual confirmation
- test difference handling
- test permission denial for unauthorized actor
- test audit event write

review_tasks:
- review operator flow for hand-delivery and cash scenarios
- review correctness of difference visibility
- review receipt readiness conditions

phase_completion_focus:
- manual payment confirmation is safe and usable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120190_PHASE_03_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120200_PHASE_04_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 04 TASK BREAKDOWN
# Receipt Issuance
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-04

backend_tasks:
- implement issue receipt API
- implement reissue receipt API
- enforce confirmed payment precondition
- enforce receipt numbering generation
- write receipt issuance and reissue audit events

frontend_tasks:
- implement receipt detail screen
- implement issue receipt action
- implement reissue receipt action with reason input
- display linked invoice and linked payment on one screen
- display prior receipt linkage on reissue

data_tasks:
- create receipt_issue table
- enforce unique receipt number within company scope
- connect prior_receipt_issue_id for reissue

test_tasks:
- test issue receipt success path
- test receipt blocked without confirmed payment
- test reissue keeps linkage
- test receipt PDF action visibility
- test receipt permission boundaries

review_tasks:
- review receipt wording and traceability
- review numbering policy implementation
- review reissue audit completeness

phase_completion_focus:
- receipt issuance is reliable and traceable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120200_PHASE_04_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120210_PHASE_05_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 05 TASK BREAKDOWN
# Collection Management
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-05

backend_tasks:
- implement overdue detection logic
- implement collection action record API
- implement customer outstanding summary read path
- implement priority flag update path
- update collection status transitions

frontend_tasks:
- implement collection dashboard
- implement collection detail screen
- display overdue list and priority queue
- display next action and promised payment date
- support collection action entry

data_tasks:
- create collection_action table
- create customer_outstanding_summary table or summary view
- create required indexes for next_action_date and customer summary

test_tasks:
- test overdue transition visibility
- test collection action recording
- test promise-to-pay update
- test priority queue visibility
- test collection status transitions

review_tasks:
- review operational realism of collection workflow
- review priority reason visibility
- review dashboard usefulness on smartphone and tablet

phase_completion_focus:
- overdue and follow-up work are operationally manageable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120210_PHASE_05_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120220_PHASE_06_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 06 TASK BREAKDOWN
# Bank Match Flow
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-06

backend_tasks:
- implement bank transaction import storage
- implement bank candidate list API
- implement bank match confirm API
- enforce ambiguous match blocking
- write bank confirmation audit events

frontend_tasks:
- implement bank matching list screen
- show candidate confidence clearly
- support confirm / reject / investigate actions
- show candidate invoice and amount comparison
- show unresolved candidate workload

data_tasks:
- create bank_transaction_import table
- index by bank account, date, and match status
- connect optional candidate_invoice_case_id

test_tasks:
- test import persistence
- test candidate list retrieval
- test ambiguous bank match rejection path
- test confirmed bank match updates payment status
- test duplicate external key handling

review_tasks:
- review match confidence visibility
- review investigation path usability
- review false-positive safety posture

phase_completion_focus:
- bank-linked confirmation is safe before it is convenient

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120220_PHASE_06_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120230_PHASE_07_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 07 TASK BREAKDOWN
# ERP Reflection
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-07

backend_tasks:
- implement ERP payment reflection request API
- implement ERP reflection result retrieval API
- implement retry path for failed reflection
- enforce FRONT_LOCAL rejection for ERP-master reflection path
- write reflection request, retry, fail, and success audit events

frontend_tasks:
- surface reflection status in invoice detail
- provide reflection request action where allowed
- provide retry action where allowed
- display reflection failure reason clearly

data_tasks:
- create erp_reflection_request table
- create erp_reflection_result table
- index reflection request by invoice and status
- index reflection result by request and status

test_tasks:
- test ERP_MASTER reflection request success path
- test FRONT_LOCAL reflection denial
- test failed reflection retrieval
- test retry visibility and audit path
- test permission limits for reflection actions

review_tasks:
- review BusinessOS boundary compliance
- review operator understanding of reflection failure
- review ERP authority consistency

phase_completion_focus:
- ERP coexistence works without authority leakage

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120230_PHASE_07_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120240_PHASE_08_TASK_BREAKDOWN.md -->
# ============================================================
# PHASE 08 TASK BREAKDOWN
# Refinement And Operator Optimization
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-08

backend_tasks:
- implement saved filter API
- optimize high-traffic list queries
- optimize dashboard aggregation queries
- harden error mapping consistency

frontend_tasks:
- implement saved filter UI
- refine dashboard top widgets
- optimize phone/tablet layouts
- refine warning and next-action visibility
- improve multilingual text expansion handling

data_tasks:
- review missing indexes from observed workloads
- review summary refresh/update strategy
- review retention/archive strategy readiness

test_tasks:
- test saved filter persistence
- test top screen responsiveness across device classes
- test multilingual overflow conditions
- test multicurrency display clarity
- test large operational list paging

review_tasks:
- review day-to-day operator speed
- review alert fatigue and dashboard density
- review final polish against design checkpoints

phase_completion_focus:
- application is practical for sustained operational use

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120240_PHASE_08_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120250_BACKEND_FRONTEND_SPLIT_NOTE.md -->
# ============================================================
# BACKEND FRONTEND SPLIT NOTE
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a cross-phase split between backend and frontend concerns.

backend_focus:
- authority enforcement
- status transition correctness
- API exact contract implementation
- persistence and indexing
- audit event generation
- ERP reflection boundary enforcement

frontend_focus:
- authority visibility
- overdue and priority visibility
- next-action clarity
- safe action entry points
- multi-device usability
- multilingual and multicurrency presentation

cross_team_alignment_rules:
- backend error codes must map cleanly to UI states
- frontend must not hide authority or eligibility fields
- frontend must not infer financial truth beyond API payload
- backend must not rely on UI to enforce authority rules

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120250_BACKEND_FRONTEND_SPLIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120260_TEST_STRATEGY_NOTE.md -->
# ============================================================
# TEST STRATEGY NOTE
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines test strategy themes across implementation phases.

test_layers:
- api contract tests
- status transition tests
- permission boundary tests
- UI behavior tests
- operational workflow tests
- regression tests for authority boundary

must_not_break:
- FRONT_LOCAL vs ERP_MASTER distinction
- receipt without confirmed payment denial
- ERP reflection denial for non-eligible path
- ambiguous bank match blocking
- collection action traceability

recommended_order:
1. api and status transition tests
2. permission tests
3. workflow tests
4. multi-device UI tests

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120260_TEST_STRATEGY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 01 IMPLEMENTATION INSTRUCTION
# IF-PHASE-01 Authority And Base Model
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-01
phase_name: Authority And Base Model

purpose:
Starts implementation from the most critical safety boundary:
authority meaning and base persistence.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Implement the minimum backend, frontend, and data foundation
required to preserve InvoiceFlow meaning.

meaning_of_done:
- invoice_case exists as canonical application object
- invoice_line exists under invoice_case
- FRONT_LOCAL and ERP_MASTER are explicit and visible
- erp_link_eligibility is explicit and visible
- company scope is enforced
- invoice list/detail can read the correct authority boundary
- invalid authority/state combinations are blocked

# ============================================================
# 2. TARGET FILE / TARGET AREA
# ============================================================

target_design_sources:
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
- 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060160_GET_INVOICE_LIST_EXACT_PAYLOAD.md
- 060.integration/060170_GET_INVOICE_DETAIL_EXACT_PAYLOAD.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- define invoice_case domain/service boundary
- define invoice_line domain/service boundary
- implement company scope validation on all entry points
- implement create FRONT_LOCAL invoice handler
- implement get invoice list handler
- implement get invoice detail handler
- ensure invoice_authority_type is always returned in list/detail payload
- ensure erp_link_eligibility is always returned in list/detail payload
- reject invalid authority writes
- reject invalid due-date relation
- reject empty invoice lines
- write audit event for FRONT_INVOICE_CREATED when create succeeds

backend_must_return:
- invoice_authority_type
- erp_link_eligibility
- invoice_status_code
- collection_status_code
- currency_code
- total_amount

backend_forbidden:
- do not auto-create ERP_MASTER from create front invoice path
- do not omit authority fields from payload
- do not rely on frontend for company-scope enforcement
- do not infer ERP eligibility from UI-only rules

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create invoice_case table
- create invoice_line table
- add pk/fk structure
- add uq_invoice_case_company_invoice_number_local
- add status and due-date related checks
- add company/status/due-date/customer indexes
- ensure created_at and updated_at exist
- ensure created_by and updated_by exist

data_validation_focus:
- invoice_origin_type must be explicit
- invoice_authority_type must be explicit
- erp_link_eligibility must be explicit
- payment_due_date must be >= invoice_date
- amount columns must be >= 0

data_forbidden:
- no implicit authority meaning
- no single boolean replacing authority model
- no company-less financial rows

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- create invoice list base screen
- create invoice detail base screen
- show invoice authority badge clearly
- show ERP eligibility clearly
- show basic invoice summary fields
- show line items
- support multilingual labels structure
- support multicurrency display structure
- keep critical badges visible on phone/tablet

frontend_visibility_requirements:
- FRONT_LOCAL badge must be obvious
- ERP_MASTER badge must be obvious
- ERP non-eligible FRONT_LOCAL invoice must be obvious
- total_amount and currency_code must be obvious

frontend_forbidden:
- do not hide authority badge in submenu or collapsed area
- do not hide ERP eligibility warning below low-priority sections
- do not display FRONT_LOCAL invoice as if it were ERP-mastered

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- create FRONT_LOCAL invoice success
- create FRONT_LOCAL invoice validation failure
- invoice list returns authority and eligibility fields
- invoice detail returns authority and eligibility fields
- company scope denies cross-company access
- invalid due date is rejected
- empty line set is rejected
- invoice badge and ERP eligibility warning render visibly

minimum_test_matrix:
- FRONT_LOCAL create success
- FRONT_LOCAL create fail
- ERP_MASTER read visibility
- cross-company access deny
- invalid payload deny

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review authority boundary correctness
- review API payload exactness against design
- review DB field naming consistency
- review invoice list/detail screen realism
- review mobile visibility of authority/eligibility badges

review_participants_recommended:
- architecture reviewer
- db reviewer
- frontend reviewer
- security reviewer

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- invoice_case and invoice_line persist correctly
- create front invoice API works
- invoice list/detail APIs work
- authority badge and ERP eligibility are visible in UI
- company scope is enforced
- no path incorrectly creates or upgrades ERP authority
- test set passes for phase 01 target scope

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- manual payment confirmation
- receipt issuance
- collection dashboard
- bank import
- ERP reflection request
- saved filter behavior
- advanced dashboard widgets

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when the application can safely represent
invoice identity and authority without semantic leakage.
Speed is secondary to boundary correctness in this phase.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 02 IMPLEMENTATION INSTRUCTION
# IF-PHASE-02 Front Invoice Core
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-02
phase_name: Front Invoice Core

purpose:
Implements the practical FRONT_LOCAL invoice operation flow.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to create, view, filter, detail-check,
generate PDF for, and request sending of FRONT_LOCAL invoices
without breaking authority boundaries.

meaning_of_done:
- operator can create FRONT_LOCAL invoice from UI
- invoice list is usable
- invoice detail is usable
- invoice PDF generation works
- send request can be registered
- invoice states move from DRAFT to PDF_READY to SENT_REQUESTED
- ERP non-eligibility remains visible at all times

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020_INVOICE_FLOW_ARCHITECTURE.md
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030120_INVOICE_DELIVERY_REQUEST_MODEL.md
- 050.flow/050110_FRONT_INVOICE_CREATION_FLOW.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060.integration/060240_GENERATE_INVOICE_PDF_EXACT_PAYLOAD.md
- 060.integration/060250_REQUEST_INVOICE_SEND_EXACT_PAYLOAD.md
- 090.interface/090110_SCREEN_LIST_INTERFACE.md
- 090.interface/090120_DASHBOARD_INTERFACE.md
- 090.interface/090130_INVOICE_DETAIL_INTERFACE.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement create FRONT_LOCAL invoice endpoint fully
- implement invoice list query with filter/sort/paging
- implement invoice detail query
- implement invoice PDF generate endpoint
- implement invoice send request endpoint
- persist invoice_delivery_request record
- update invoice_status_code correctly
- enforce PDF existence before send request
- keep ERP authority fields in every list/detail response
- write audit events for invoice create, PDF generate, and send request

backend_required_payload_fields:
- invoice_case_id
- invoice_number_local
- invoice_authority_type
- erp_link_eligibility
- invoice_status_code
- payment_due_date
- currency_code
- total_amount

backend_forbidden:
- do not create ERP_MASTER invoice in this phase
- do not allow send request without pdf_document_id
- do not omit authority fields from list/detail responses
- do not silently coerce invalid line or amount input

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create invoice_delivery_request table
- connect pdf_document_id storage to invoice_case
- confirm invoice list indexes support status and due-date queries
- confirm local invoice number uniqueness handling
- persist requested_by / requested_at / delivery status fields

data_integrity_focus:
- invoice_case must stay FRONT_LOCAL
- invoice_status_code must follow allowed transitions
- invoice_delivery_request must remain tied to invoice_case
- send request must not mutate authority meaning

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement create front invoice screen fields
- implement invoice line item editor
- implement invoice list screen with filters and paging
- implement invoice detail sections
- implement generate PDF action
- implement send request action
- show invoice authority badge clearly
- show ERP non-eligible warning clearly
- show document action section clearly
- support phone/tablet/pc usable layouts

frontend_ui_requirements:
- invoice create flow must show required fields clearly
- invoice detail must show invoice summary before secondary information
- invoice authority and ERP eligibility must stay visible near top area
- list rows must expose overdue/payment state and authority
- PDF and send actions must be easy to locate

frontend_forbidden:
- do not bury ERP non-eligible warning
- do not display FRONT_LOCAL invoice as if ERP-managed
- do not require desktop-only interaction for core actions

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- create front invoice success
- create front invoice validation failure
- invoice list filter by status
- invoice list filter by authority type
- invoice detail returns expected sections
- generate PDF success
- send request success after PDF exists
- send request failure when PDF missing
- authority badge renders
- ERP non-eligible warning renders

minimum_test_matrix:
- valid create
- invalid create
- valid pdf generate
- valid send request
- blocked send without pdf
- list/detail response contract match
- ui authority visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review invoice create field completeness
- review list/detail operator usability
- review document action discoverability
- review pdf/send flow semantics
- review authority boundary presentation
- review mobile layout with long titles and large amounts

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- create front invoice path is usable end-to-end
- invoice list and detail are usable
- invoice PDF generate works
- send request registration works
- DRAFT -> PDF_READY -> SENT_REQUESTED transitions work
- authority badge and ERP non-eligibility warning stay visible
- audit events exist for create/pdf/send actions

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- manual payment confirmation
- receipt issuance
- collection dashboard and collection detail
- bank transaction import
- ERP reflection request
- saved filter persistence

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when FRONT_LOCAL invoice handling feels real,
safe, and operationally usable,
without creating any semantic confusion with ERP authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 03 IMPLEMENTATION INSTRUCTION
# IF-PHASE-03 Manual Payment Confirmation
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-03
phase_name: Manual Payment Confirmation

purpose:
Implements safe manual payment confirmation for hand-delivery,
cash receipt, and equivalent non-bank-led confirmation routes.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to record manual payment confirmation
with clear difference/partial handling,
correct invoice status updates,
and mandatory auditability.

meaning_of_done:
- operator can open manual payment confirmation flow
- confirmed payment date and amount can be recorded
- difference_amount is computed explicitly
- partial payment is handled explicitly
- invoice status updates correctly
- receipt readiness becomes visible
- audit event is written

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md
- 030.model/030140_PAYMENT_CONFIRMATION_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 040.runtime/040140_MANUAL_PAYMENT_CONFIRMATION_RUNTIME.md
- 050.flow/050140_MANUAL_PAYMENT_CONFIRMATION_FLOW.md
- 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement manual payment confirmation endpoint fully
- validate company scope and actor permission
- validate invoice_case target existence
- compute confirmed_amount, fee_amount, and difference_amount
- determine PARTIAL_CONFIRMED when remaining outstanding exists
- determine MANUAL_CONFIRMED when exact or accepted confirmation exists
- determine DIFFERENCE_FOUND when mismatch requires explicit visibility
- update invoice_status_code based on payment result
- update collection_status_code where resolution or monitoring changes
- return receipt_issue_ready boolean
- write PAYMENT_MANUAL_CONFIRMED audit event
- write PAYMENT_DIFFERENCE_OVERRIDDEN audit event when override path exists later

backend_required_payload_fields:
- payment_confirmation_id
- confirmation_source_type
- confirmation_status_code
- confirmed_amount
- fee_amount
- difference_amount
- invoice_status_code
- collection_status_code
- receipt_issue_ready

backend_validation_rules:
- confirmed_payment_date required
- confirmed_amount required
- confirmed_amount must be >= 0
- fee_amount must be >= 0
- invoice target must belong to actor company scope
- manual confirmation must fail when role lacks permission

backend_forbidden:
- do not auto-issue receipt in this phase
- do not hide difference_amount
- do not silently convert manual confirmation into bank-linked confirmation
- do not bypass permission checks
- do not overwrite prior payment history destructively

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create payment_confirmation table if not already created
- connect payment_confirmation to invoice_case via fk
- persist confirmation_source_type = MANUAL
- persist confirmation_status_code
- persist manual_receipt_note
- persist evidence_file_id when present
- persist confirmed_by and confirmed_at
- ensure invoice/payment indexes support invoice-centric retrieval

data_integrity_focus:
- MANUAL must remain explicit in confirmation_source_type
- payment_confirmation must never be company-less
- confirmed_amount and fee_amount must remain non-negative
- payment confirmation must remain historically visible

data_forbidden:
- no destructive overwrite of previous confirmation rows
- no null confirmation source type
- no implicit difference calculation only in UI

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement manual payment confirmation entry screen
- show invoice summary above confirmation form
- show invoice total, confirmed total, and outstanding amount clearly
- allow confirmed_payment_date input
- allow confirmed_amount input
- allow fee_amount input
- allow manual_receipt_note input
- allow evidence_file_id/reference input
- display computed difference or remaining outstanding clearly
- display receipt readiness state clearly after success
- display error blocking state clearly

frontend_ui_requirements:
- form must support phone/tablet/pc layouts
- operator must understand remaining outstanding without extra navigation
- partial payment result must be obvious
- difference result must be obvious
- receipt is not yet issued, only readiness is shown

frontend_forbidden:
- do not hide outstanding amount below secondary sections
- do not make difference state visually subtle
- do not show receipt as issued when only readiness exists
- do not assume desktop-only form behavior

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- manual full payment confirmation success
- manual partial payment confirmation success
- manual confirmation with fee amount
- manual confirmation with difference result
- permission denial for unauthorized role
- cross-company denial
- invoice status update correctness
- collection status update correctness
- receipt readiness flag correctness
- audit event write correctness

minimum_test_matrix:
- exact payment
- partial payment
- difference found
- invalid negative amount
- invalid permission
- invalid company scope
- ui displays outstanding and difference visibly

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review real-world usability for cash / hand-delivery cases
- review difference and partial semantics
- review invoice status transition correctness
- review collection status transition correctness
- review auditability of manual confirmation
- review mobile form usability

review_focus:
- operator should not misunderstand payment completion
- operator should not lose visibility of remaining unpaid amount
- finance/security should trust audit completeness

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- operator can complete manual payment confirmation safely
- confirmed payment row is persisted with MANUAL source
- exact/partial/difference result is explicit
- invoice status updates correctly
- collection status updates correctly
- receipt readiness is returned and visible
- audit event exists for manual confirmation
- blocking errors are explicit and understandable

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- receipt issuance execution
- receipt reissue
- bank transaction import
- bank candidate confirmation
- ERP reflection request
- advanced collection dashboard behavior

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when manual confirmation is operationally usable,
financially explicit,
and auditable enough that it does not create false confidence
about payment completion.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120300_INVOICEFLOW_BILLING_CONTROL_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# INVOICEFLOW BILLING CONTROL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in InvoiceFlow.

implementation_priority:
- Phase A should begin from billing cockpit and settlement visibility,
  not from generic invoice editing expansion.
- Financial control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for execution timeline, settlement exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw invoice editing from execution readiness aggregation
- create slice order:
  - billing cockpit query
  - settlement exception review query
  - approval action
  - downstream finance readiness review

hard_rules:
- keep raw invoice detail separate from execution rollup state
- keep approval and exception review separate from raw history
- do not collapse overdue or settlement blockers into only notes
- do not bury downstream finance blockers inside generic invoice text

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  InvoiceFlow can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120300_INVOICEFLOW_BILLING_CONTROL_IMPLEMENTATION_GUIDE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 04 IMPLEMENTATION INSTRUCTION
# IF-PHASE-04 Receipt Issuance
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-04
phase_name: Receipt Issuance

purpose:
Implements receipt issuance and reissue
with explicit linkage to confirmed payment
and strong auditability.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable authorized operators to issue and reissue receipts
from confirmed payment records
without losing linkage, numbering, or audit trail.

meaning_of_done:
- receipt can be issued only from confirmed payment
- receipt number is generated and stored
- receipt PDF can be generated
- receipt detail is viewable
- receipt reissue works with prior linkage preserved
- audit events are written for issue and reissue

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020140_RECEIPT_ISSUANCE_ARCHITECTURE.md
- 030.model/030170_RECEIPT_ISSUE_MODEL.md
- 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 040.runtime/040160_RECEIPT_ISSUANCE_RUNTIME.md
- 050.flow/050160_RECEIPT_ISSUANCE_FLOW.md
- 050.flow/050200_RECEIPT_STATUS_TRANSITION_FLOW.md
- 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 060.integration/060270_REISSUE_RECEIPT_EXACT_PAYLOAD.md
- 080.policy/080120_RECEIPT_POLICY.md
- 080.policy/080160_DOCUMENT_NUMBERING_POLICY.md
- 080.policy/080170_DOCUMENT_TEMPLATE_POLICY.md
- 090.interface/090160_RECEIPT_INTERFACE.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement issue receipt endpoint fully
- implement reissue receipt endpoint fully
- validate confirmed payment precondition
- validate role permission for issue and reissue
- generate receipt number according to current numbering policy
- persist receipt_issue record
- persist prior_receipt_issue_id on reissue
- generate/store receipt PDF reference
- return receipt detail payload
- write RECEIPT_ISSUED audit event
- write RECEIPT_REISSUED audit event

backend_required_payload_fields:
- receipt_issue_id
- receipt_number
- receipt_status_code
- pdf_document_id
- issued_at
- linked invoice_case_id
- linked payment_confirmation_id

backend_validation_rules:
- payment_confirmation_id must exist
- payment confirmation must be confirmed state
- reissue requires receipt_issue_id target
- reissue reason must be stored
- receipt number must be unique within company scope

backend_forbidden:
- do not issue receipt without confirmed payment
- do not overwrite old receipt number on reissue
- do not hide prior receipt linkage
- do not reuse issue action as if it were reissue
- do not bypass audit on receipt actions

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create receipt_issue table if not already created
- enforce unique receipt number within company scope
- persist prior_receipt_issue_id for reissue
- persist language_code and currency_code on receipt
- connect receipt_issue to invoice_case and payment_confirmation
- connect pdf_document_id to generated receipt document

data_integrity_focus:
- receipt must link to payment_confirmation
- reissued receipt must preserve prior linkage
- receipt_status_code must remain explicit
- issue and reissue should remain historically visible

data_forbidden:
- no destructive overwrite of prior receipt rows
- no receipt without payment linkage
- no null receipt number after successful issue

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement receipt detail screen
- implement issue receipt action from confirmed payment context
- implement reissue receipt action with reason input
- show linked payment summary on receipt screen
- show linked invoice summary on receipt screen
- show receipt number and issue timestamp clearly
- show prior receipt linkage on reissue
- show PDF action clearly
- support phone/tablet/pc usable layouts

frontend_ui_requirements:
- operator must understand which payment this receipt comes from
- operator must understand which invoice this receipt is linked to
- reissue must visibly differ from original receipt
- receipt status must be clear
- issue vs reissue actions must not be confusable

frontend_forbidden:
- do not display receipt as independent from payment
- do not hide prior linkage in reissue flows
- do not make issue/reissue actions visually ambiguous
- do not imply ERP-issued receipt if application-issued receipt is intended

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- receipt issue success from confirmed payment
- receipt issue denied without confirmed payment
- receipt number uniqueness
- receipt PDF generated reference exists
- receipt detail shows linked invoice and payment
- receipt reissue success with reason
- prior receipt linkage preserved
- permission denial for unauthorized reissue
- audit event written for issue
- audit event written for reissue

minimum_test_matrix:
- issue success
- issue denied
- reissue success
- reissue denied
- duplicate number prevention
- ui linkage visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review payment-to-receipt linkage clarity
- review numbering correctness
- review reissue traceability
- review receipt wording and layout realism
- review receipt screen usability on phone/tablet
- review audit completeness for issue/reissue

review_focus:
- receipt must be trusted by operator
- reissue must never erase historical truth
- receipt flow must not create false financial authority meaning

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- authorized operator can issue receipt from confirmed payment
- receipt number is generated and persisted
- receipt PDF reference is persisted
- receipt detail is viewable
- reissue creates new record with prior linkage preserved
- audit events exist for issue and reissue
- permissions and blocking errors behave correctly

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- collection dashboard
- bank import
- bank match confirmation
- ERP reflection
- saved filters
- advanced customer summary reporting

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when receipt issuance is not merely possible,
but traceable, linked, and safe enough
that operators can rely on it without losing payment history meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120310_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md -->
# ============================================================
# INVOICEFLOW PHASE A BILLING EXECUTION TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-billing-execution-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for InvoiceFlow
Phase A financial control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw invoice editing separate from execution rollup state
- keep audit append separate from review query repositories

recommended_server_modules:
- api/controller
- api/dto
- application/service
- application/validator
- application/mapper
- domain/model
- domain/port
- infrastructure/repository
- infrastructure/audit

phase_a_skeleton_units:
- BillingCockpitQueryController
- BillingCockpitQueryService
- BillingCockpitQueryValidator
- BillingExecutionTimelineRepository
- SettlementExceptionReviewController
- SettlementExceptionReviewService
- SettlementExceptionReviewValidator
- SettlementExceptionReviewRepository
- BillingCockpitSnapshotRepository
- InvoiceFlowAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - settlement review orchestration
  - summary message assembly
- validator:
  - required field checks
  - page boundary checks
  - Phase A scope rejection
- mapper:
  - dto to domain mapping
  - domain to response mapping
- repository:
  - persistence and query only
  - no business branching
- audit:
  - append events after relevant review operations when needed

phase_a_build_order:
- step_01_billing_cockpit_query_path
- step_02_settlement_exception_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- billing_cockpit_query_success
- billing_cockpit_query_validation_failure
- settlement_exception_review_query_success
- settlement_exception_review_include_resolved_toggle
- settlement_exception_review_include_downstream_finance_blockers_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and exception review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no invoice write automation in this document
- no settlement workflow here
- no accounting posting execution here
- no Android client work here

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120310_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120310_PHASE_05_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 05 IMPLEMENTATION INSTRUCTION
# IF-PHASE-05 Collection Management
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-05
phase_name: Collection Management

purpose:
Implements overdue handling,
collection action recording,
priority collection visibility,
and customer outstanding visibility
as first-class operational functions.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to manage unpaid and overdue invoices
inside InvoiceFlow without leaving the application.

meaning_of_done:
- overdue items become visible
- collection dashboard becomes usable
- collection detail becomes usable
- collection actions can be recorded
- next action and promised payment dates can be managed
- priority collection flag and reason visibility are usable
- customer outstanding summary is visible

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020130_COLLECTION_MANAGEMENT_ARCHITECTURE.md
- 030.model/030180_COLLECTION_ACTION_MODEL.md
- 030.model/030190_CUSTOMER_OUTSTANDING_SUMMARY_MODEL.md
- 030.model/030310_COLLECTION_ACTION_PHYSICAL_MODEL.md
- 030.model/030340_CUSTOMER_OUTSTANDING_SUMMARY_PHYSICAL_MODEL.md
- 040.runtime/040150_COLLECTION_PRIORITY_RUNTIME.md
- 050.flow/050150_COLLECTION_FOLLOW_UP_FLOW.md
- 050.flow/050190_COLLECTION_STATUS_TRANSITION_FLOW.md
- 060.integration/060220_RECORD_COLLECTION_ACTION_EXACT_PAYLOAD.md
- 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
- 080.policy/080130_COLLECTION_PRIORITY_POLICY.md
- 070.operations/070110_COLLECTION_OPERATIONS_STANDARD.md
- 070.operations/070160_AUDIT_EVENT_LEDGER.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement overdue detection/update logic
- implement collection dashboard read API
- implement collection detail read API
- implement record collection action API
- implement next_action_date persistence
- implement promised_payment_date persistence
- implement escalation_required_flag persistence
- update collection_status_code according to action outcomes
- expose priority flag and priority rank/reason in read payloads
- expose customer outstanding summary in read payloads
- write COLLECTION_ACTION_RECORDED audit event
- write COLLECTION_ESCALATED audit event when escalation occurs

backend_required_payload_fields:
- collection_status_code
- overdue_days
- outstanding_amount
- next_action_date
- promised_payment_date
- priority_collection_flag
- priority_rank_code or priority_reason_summary
- customer outstanding totals where relevant

backend_business_rules:
- overdue invoices must not disappear from collection scope silently
- resolved collection state must be explicit
- promised payment must remain traceable
- escalation must remain traceable
- priority visibility must be explainable to operator

backend_forbidden:
- do not hide overdue work because no notification fired
- do not infer collection resolution without explicit status change
- do not overwrite history destructively
- do not make priority opaque to the operator

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create collection_action table if not already created
- create customer_outstanding_summary table or summary view if not already created
- connect collection_action to invoice_case
- persist action_type_code
- persist response_summary
- persist next_action_date
- persist promised_payment_date
- persist escalation_required_flag
- persist/update customer outstanding aggregates by customer and currency
- index next_action_date and action_date
- index customer outstanding priority and overdue totals

data_integrity_focus:
- collection history must remain additive and traceable
- customer outstanding summary must remain company-scoped
- overdue values must remain non-negative
- summary and detail should align by currency scope

data_forbidden:
- no destructive replacement of action history
- no company-less summary rows
- no hidden cross-currency aggregation without explicit rule

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement collection dashboard
- implement collection detail screen
- display overdue list
- display collection due list
- display priority queue
- display dunning history/action history
- display next action date clearly
- display promised payment date clearly
- display escalation state clearly
- display customer outstanding summary
- support action entry form for collection actions
- keep priority and overdue facts visible on phone/tablet

frontend_ui_requirements:
- operator must understand what to do next from dashboard
- overdue days must be visible without opening deep detail where possible
- collection detail must show target summary above history
- priority reason or rank must be understandable
- collection action entry should be fast for day-to-day use

frontend_forbidden:
- do not bury next_action_date
- do not hide overdue days below low-priority content
- do not present customer outstanding in ambiguous currency form
- do not make collection detail desktop-only

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- overdue item appears in collection dashboard
- collection action record success
- next action date persistence
- promised payment date persistence
- escalation flag persistence
- collection status transition correctness
- priority flag visibility
- customer outstanding summary visibility
- audit event write for collection action
- audit event write for escalation

minimum_test_matrix:
- overdue monitoring
- follow-up required
- promised state
- escalated state
- resolved state
- ui next-action visibility
- customer summary by currency visibility

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review collection workflow realism with actual overdue handling
- review priority rank/reason usefulness
- review dashboard usefulness on phone/tablet
- review customer outstanding clarity
- review action history completeness
- review escalation semantics

review_focus:
- collection should feel operationally actionable, not just report-like
- operators should not miss next_action_date
- priority display should drive work ordering without confusion

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- overdue invoices are visible in collection dashboard
- operator can record collection actions
- next action and promised payment dates are visible and stored
- escalation can be recorded and surfaced
- priority collection visibility works
- customer outstanding summary works
- collection status transitions behave correctly
- audit events exist for collection action and escalation

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- bank transaction import
- bank candidate confirmation
- ERP reflection
- saved filters
- advanced analytics beyond operational summary

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when unpaid work becomes operationally manageable,
not merely visible,
and when collection history and next actions are reliable enough
for daily follow-up use.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120310_PHASE_05_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120320_INVOICEFLOW_PHASE_A_STUB_FILE_PLAN.md -->
# ============================================================
# INVOICEFLOW PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
InvoiceFlow Phase A financial control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.InvoiceFlow

target_server_source_root_example:
- src/main/java/com/lsam/InvoiceFlow

target_test_source_root_example:
- src/test/java/com/lsam/InvoiceFlow

phase_a_scope_modules:
- billing cockpit query
- settlement exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/InvoiceFlow/api/controller/execution/BillingCockpitQueryController.java
- src/main/java/com/lsam/InvoiceFlow/api/controller/execution/SettlementExceptionReviewQueryController.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/request/BillingCockpitQueryRequest.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/request/SettlementExceptionReviewQueryRequest.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/response/BillingCockpitQueryResponse.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/response/SettlementExceptionReviewQueryResponse.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/InvoiceFlow/application/service/execution/BillingCockpitQueryService.java
- src/main/java/com/lsam/InvoiceFlow/application/service/execution/SettlementExceptionReviewQueryService.java
- src/main/java/com/lsam/InvoiceFlow/application/validator/execution/BillingCockpitQueryValidator.java
- src/main/java/com/lsam/InvoiceFlow/application/validator/execution/SettlementExceptionReviewQueryValidator.java
- src/main/java/com/lsam/InvoiceFlow/application/mapper/execution/BillingCockpitQueryMapper.java
- src/main/java/com/lsam/InvoiceFlow/application/mapper/execution/SettlementExceptionReviewQueryMapper.java
- src/main/java/com/lsam/InvoiceFlow/domain/model/execution/BillingExecutionTimelineItem.java
- src/main/java/com/lsam/InvoiceFlow/domain/model/execution/SettlementExceptionReviewItem.java
- src/main/java/com/lsam/InvoiceFlow/domain/model/execution/BillingCockpitSnapshot.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/BillingExecutionTimelineRepository.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/SettlementExceptionReviewRepository.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/BillingCockpitSnapshotRepository.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/InvoiceFlowAuditPort.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/repository/execution/JdbcBillingExecutionTimelineRepository.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/repository/execution/JdbcSettlementExceptionReviewRepository.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/repository/execution/JdbcBillingCockpitSnapshotRepository.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/audit/execution/DatabaseInvoiceFlowAuditAdapter.java
- src/main/java/com/lsam/InvoiceFlow/config/execution/InvoiceFlowPhaseAConfig.java
- src/test/java/com/lsam/InvoiceFlow/application/service/execution/BillingCockpitQueryServiceTest.java
- src/test/java/com/lsam/InvoiceFlow/application/service/execution/SettlementExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120320_INVOICEFLOW_PHASE_A_STUB_FILE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120320_PHASE_06_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 06 IMPLEMENTATION INSTRUCTION
# IF-PHASE-06 Bank Match Flow
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-06
phase_name: Bank Match Flow

purpose:
Implements bank transaction import,
candidate matching,
operator-confirmed bank-linked payment confirmation,
and safe handling of ambiguous candidates.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to review imported bank transactions,
inspect candidate invoice matches,
confirm safe matches,
and leave ambiguous candidates unresolved until human review.

meaning_of_done:
- bank transactions can be stored
- candidate list is retrievable
- operator can confirm a safe bank match
- ambiguous matches remain blocked from auto-finalization
- invoice/payment state updates correctly after confirmed bank match
- audit trail exists for bank-linked confirmation actions

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md
- 030.model/030150_BANK_TRANSACTION_IMPORT_MODEL.md
- 030.model/030320_BANK_TRANSACTION_IMPORT_PHYSICAL_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 040.runtime/040130_BANK_MATCHING_RUNTIME.md
- 050.flow/050130_BANK_PAYMENT_CONFIRMATION_FLOW.md
- 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 060.integration/060200_CONFIRM_BANK_MATCH_EXACT_PAYLOAD.md
- 060.integration/060260_GET_BANK_MATCH_CANDIDATE_LIST_EXACT_PAYLOAD.md
- 070.operations/070130_BANK_MATCH_EXCEPTION_OPERATIONS_STANDARD.md
- 070.operations/070140_BANK_IMPORT_OPERATIONS_STANDARD.md
- 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement bank transaction import persistence path
- implement bank match candidate list API
- implement bank match confirm API
- validate actor permission for bank-match confirmation
- validate company scope on imported transactions and target invoices
- store candidate confidence and candidate invoice linkage
- block auto-finalization for ambiguous candidates
- create payment_confirmation with confirmation_source_type = BANK_LINKED on successful confirm
- compute difference_amount explicitly
- update invoice_status_code after confirmed bank match
- update collection_status_code after confirmed bank match where applicable
- return receipt_issue_ready boolean
- write PAYMENT_BANK_MATCH_CONFIRMED audit event
- write exception/override audit events where policy requires

backend_required_payload_fields:
- bank_transaction_id
- match_status_code
- candidate_invoice_case_id
- candidate_confidence
- payment_confirmation_id when confirmed
- confirmation_source_type
- confirmation_status_code
- confirmed_amount
- difference_amount
- invoice_status_code
- collection_status_code
- receipt_issue_ready

backend_business_rules:
- ambiguous candidates must not silently confirm
- unmatched transactions must remain visible
- rejected candidates must remain historically traceable
- exact and fee-adjusted differences must remain explicit
- company scope must be enforced for both invoice and transaction

backend_forbidden:
- do not auto-confirm low-confidence candidates
- do not discard unmatched transactions silently
- do not overwrite import history destructively
- do not convert ambiguous candidate into success response
- do not hide difference_amount from API response

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create bank_transaction_import table if not already created
- persist bank_account_id
- persist external_transaction_key when available
- persist transaction_date, transaction_name, transaction_amount, currency_code
- persist match_status_code
- persist candidate_invoice_case_id and candidate_confidence where available
- connect successful bank match to payment_confirmation
- add required indexes for account/date/status lookup
- enforce duplicate handling for external_transaction_key where policy uses it

data_integrity_focus:
- transaction import history must be traceable
- bank-linked confirmation must remain explicit
- transaction amount must remain non-negative
- candidate confidence must remain bounded
- imported transaction must remain company-scoped

data_forbidden:
- no silent duplicate collapse without trace
- no null company scope
- no destructive overwrite of prior import rows
- no implicit conversion of BANK_LINKED to MANUAL

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement bank candidate list screen
- display bank account, transaction date, payer name, amount, and candidate invoice
- display candidate confidence clearly
- implement confirm / reject / investigate actions
- display ambiguity/blocking state clearly
- display resulting payment state after successful confirmation
- display receipt readiness after successful confirmation
- keep candidate workload usable on phone/tablet/pc

frontend_ui_requirements:
- operator must understand why a candidate is safe or unsafe
- confidence must be visible, not hidden
- ambiguous candidate must visually differ from safe candidate
- invoice number, customer, and amount comparison should be easy to read
- unresolved candidate workload must remain accessible

frontend_forbidden:
- do not visually imply that all candidates are safe
- do not hide ambiguity behind tiny secondary text
- do not make confirm and reject actions easy to confuse
- do not require desktop-only interaction for critical review

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- import persistence success
- candidate list retrieval success
- confirmed bank match success
- ambiguous bank match blocked
- rejected candidate remains visible/history-safe
- exact match state update
- difference state update
- invoice status update after confirmed bank match
- collection status update after confirmed bank match
- audit event write for bank match confirmation

minimum_test_matrix:
- safe candidate confirm
- ambiguous candidate block
- no-candidate visible unresolved case
- duplicate external key handling
- cross-company deny
- ui confidence visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review false-positive safety posture
- review candidate confidence visibility
- review investigation path realism
- review operator understanding of ambiguous cases
- review amount comparison clarity
- review phone/tablet usability for candidate triage

review_focus:
- safety beats automation in this phase
- operator must trust that unresolved means unresolved
- convenience must not blur financial correctness

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- imported bank transactions are stored and visible
- candidate list works
- safe bank match can be confirmed
- ambiguous candidate is blocked from auto-finalization
- BANK_LINKED payment confirmation is created correctly
- invoice and collection states update correctly after confirmed match
- audit events exist for bank-linked confirmation
- unresolved candidate workload remains visible

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- ERP reflection request
- saved filters
- advanced ML scoring
- full auto-reconciliation without operator review

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when bank-linked confirmation is operationally useful
without pretending that uncertainty has been resolved.
Ambiguity must remain visible and block finalization until reviewed.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120320_PHASE_06_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120330_INVOICEFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md -->
# ============================================================
# INVOICEFLOW PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the InvoiceFlow Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A billing execution timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_billing_cockpit_query
- module_04_settlement_exception_review_query
- module_05_snapshot_and_audit_bridge
- module_06_configuration
- module_07_tests

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes

module_02_validators:
  goal:
    - reject invalid request shapes before service entry

module_03_billing_cockpit_query:
  goal:
    - assemble pending approvals, settlement blockers, and downstream finance visibility

module_04_settlement_exception_review_query:
  goal:
    - expose settlement and downstream blocker review rows

module_05_snapshot_and_audit_bridge:
  goal:
    - define optional snapshot persistence and audit append boundary

module_06_configuration:
  goal:
    - provide minimum wiring boundary

module_07_tests:
  goal:
    - establish minimum Phase A test safety net

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120330_INVOICEFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120330_PHASE_07_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 07 IMPLEMENTATION INSTRUCTION
# IF-PHASE-07 ERP Reflection
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-07
phase_name: ERP Reflection

purpose:
Implements ERP-aware payment-result reflection
for eligible ERP_MASTER paths
without breaking authority boundaries.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable InvoiceFlow to request payment-result reflection
to ERP through the shared BusinessOS boundary
only for eligible ERP_MASTER invoice paths.

meaning_of_done:
- ERP_MASTER invoice can request payment-result reflection
- FRONT_LOCAL invoice is explicitly denied for ERP-master reflection path
- reflection request/result persistence works
- retry path works for failed reflection
- reflection failure is visible to operators
- audit trail exists for request, retry, fail, and success

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020150_SHARED_ERP_REFLECTION_ARCHITECTURE.md
- 030.model/030200_ERP_REFLECTION_REQUEST_MODEL.md
- 030.model/030210_ERP_REFLECTION_RESULT_MODEL.md
- 030.model/030330_ERP_REFLECTION_PHYSICAL_MODEL.md
- 040.runtime/040120_ERP_MASTER_INVOICE_RUNTIME.md
- 050.flow/050120_ERP_MASTER_INVOICE_REFERENCE_FLOW.md
- 050.flow/050210_ERP_REFLECTION_STATUS_TRANSITION_FLOW.md
- 060.integration/060130_SHARED_ERP_REFLECTION_INTEGRATION_CONTRACT.md
- 060.integration/060230_REQUEST_ERP_PAYMENT_REFLECTION_EXACT_PAYLOAD.md
- 060.integration/060280_GET_ERP_REFLECTION_RESULT_EXACT_PAYLOAD.md
- 080.policy/080110_INVOICE_AUTHORITY_POLICY.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement request ERP payment reflection endpoint
- implement get ERP reflection result endpoint
- implement retry failed ERP reflection path
- validate actor permission for reflection request/retry
- validate company scope for invoice/payment/reflection target
- validate invoice_authority_type = ERP_MASTER for reflection path
- validate erp_link_eligibility for reflection path
- persist erp_reflection_request record
- persist erp_reflection_result record
- expose reflection_status, external_document_no, and error details
- write ERP_REFLECTION_REQUESTED audit event
- write ERP_REFLECTION_RETRIED audit event
- write ERP_REFLECTION_FAILED audit event
- write ERP_REFLECTION_SYNCED audit event

backend_required_payload_fields:
- erp_reflection_request_id
- invoice_case_id
- invoice_authority_type
- reflection_type_code
- reflection_status
- external_document_no
- applied_at
- error_code
- error_message

backend_business_rules:
- FRONT_LOCAL must fail ERP-master reflection path explicitly
- shared BusinessOS boundary is mandatory
- failure must remain visible and retrievable
- retry must remain auditable
- success must not change invoice authority meaning

backend_forbidden:
- do not bypass shared BusinessOS boundary
- do not silently ignore failed reflections
- do not convert FRONT_LOCAL into ERP_MASTER
- do not hide error details from operator-facing retrieval
- do not allow unauthorized reflection requests

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create erp_reflection_request table if not already created
- create erp_reflection_result table if not already created
- persist invoice_case_id and payment_confirmation_id linkage
- persist request_status_code and result_status_code
- persist external_document_no on success when returned
- persist error_code and error_message on failure
- add indexes for invoice/status/request/result retrieval

data_integrity_focus:
- reflection request must remain linked to invoice_case
- result must remain linked to request
- request/result must remain company-scoped
- FRONT_LOCAL denial must not create misleading success-like records

data_forbidden:
- no silent destructive overwrite of failed results
- no null authority interpretation
- no result row detached from request row

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- display reflection status in invoice detail
- display reflection action where allowed
- display retry action where allowed
- display reflection failure reason clearly
- display ERP authority context clearly near reflection section
- keep reflection actions separated from normal front-invoice actions
- support phone/tablet/pc readable reflection status display

frontend_ui_requirements:
- operator must understand whether reflection is allowed
- operator must understand whether failure is retryable
- FRONT_LOCAL invoices must clearly show ERP reflection not applicable
- ERP_MASTER invoices must clearly show reflection state
- reflection errors must be understandable without deep technical jargon

frontend_forbidden:
- do not show reflection request action on disallowed FRONT_LOCAL path
- do not hide failure reason
- do not make retry action available without failed state and permission
- do not imply ERP truth changed before success is confirmed

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- ERP_MASTER reflection request success
- FRONT_LOCAL reflection denial
- unauthorized reflection denial
- reflection result retrieval success
- failed reflection visibility
- retry path success
- retry path audit event write
- reflection error display contract correctness
- invoice detail reflection section visibility

minimum_test_matrix:
- ERP_MASTER allowed path
- FRONT_LOCAL denied path
- failed reflection path
- retry success path
- permission denial path
- ui failure visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review shared boundary compliance
- review FRONT_LOCAL denial clarity
- review operator understanding of reflection failure and retry
- review DB and API consistency for request/result tables
- review reflection section clarity on phone/tablet

review_focus:
- authority boundary must remain intact
- retry must be understandable and traceable
- ERP coexistence meaning must not blur

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- ERP_MASTER payment reflection can be requested
- FRONT_LOCAL reflection is explicitly denied
- reflection request/result persistence works
- failed result retrieval works
- retry path works
- reflection status is visible in invoice detail
- audit events exist for request/retry/fail/success

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- ERP-side accounting ledger implementation
- ERP-side invoice-master creation from InvoiceFlow
- advanced external workflow orchestration beyond defined reflection path

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when ERP coexistence is real,
safe, and explicit,
without allowing InvoiceFlow to pretend it owns ERP master authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120330_PHASE_07_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120340_INVOICEFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->
# ============================================================
# INVOICEFLOW PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for InvoiceFlow
Phase A stub generation.

content_order_strategy:
- start from dependency-light files
- lock contracts first
- write ports before adapters
- write tests after service boundaries are clear

first_slice_recommended_start:
- ErrorResponse
- BillingCockpitQueryRequest
- BillingCockpitQueryResponse
- BillingCockpitQueryValidator
- BillingExecutionTimelineItem
- BillingExecutionTimelineRepository
- BillingCockpitQueryMapper
- BillingCockpitQueryService
- BillingCockpitQueryController
- JdbcBillingExecutionTimelineRepository
- DatabaseInvoiceFlowAuditAdapter
- InvoiceFlowPhaseAConfig
- BillingCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays exception review query until cockpit boundaries are stable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120340_INVOICEFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120340_PHASE_08_IMPLEMENTATION_INSTRUCTION.md -->
# ============================================================
# PHASE 08 IMPLEMENTATION INSTRUCTION
# IF-PHASE-08 Refinement And Operator Optimization
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-08
phase_name: Refinement And Operator Optimization

purpose:
Refines the application for sustained operational use
through saved filters, layout optimization,
performance hardening, and multilingual/multicurrency polish.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Improve practical day-to-day usability,
query responsiveness,
and multi-device / multilingual / multicurrency quality
after the core business functions are stable.

meaning_of_done:
- saved invoice list filters work
- top operational screens are optimized for phone/tablet/pc
- high-traffic list queries are improved
- dashboard information density is improved
- multilingual text expansion is handled safely
- multicurrency display remains unambiguous in all key screens

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 060.integration/060290_SAVE_INVOICE_LIST_FILTER_EXACT_PAYLOAD.md
- 090.interface/090120_DASHBOARD_INTERFACE.md
- 090.interface/090130_INVOICE_DETAIL_INTERFACE.md
- 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
- 110.infrastructure/110110_NON_FUNCTIONAL_REQUIREMENTS.md
- 110.infrastructure/110120_MULTI_DEVICE_LAYOUT_REQUIREMENTS.md
- 120.implementation/120240_PHASE_08_TASK_BREAKDOWN.md
- 900.meta/900090_FINAL_REVIEW_CHECKPOINTS.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement save invoice list filter endpoint
- implement read saved filter behavior where needed
- optimize invoice list query performance
- optimize collection dashboard aggregation performance
- optimize bank candidate list retrieval where needed
- harden error-code to UI-state consistency
- confirm index usage on high-traffic queries

backend_required_payload_fields:
- filter_preset_id
- preset_name
- saved_at

backend_business_rules:
- saved filters must remain company-scoped and actor-safe
- optimization must not remove authority or status fields
- error handling must remain explicit

backend_forbidden:
- do not optimize by dropping essential visibility fields
- do not create cross-company filter leakage
- do not hide slow-query problems by reducing critical data unexpectedly

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create saved filter persistence if required by implementation choice
- add missing indexes discovered from operational usage
- review summary update strategy for customer_outstanding_summary
- review archive/retention readiness for large operational history
- confirm index support for overdue, next_action_date, status, and authority queries

data_integrity_focus:
- saved filters must remain actor/company scoped
- optimization must preserve result correctness
- large-history handling must preserve auditability

data_forbidden:
- no unsafe cache that returns stale authority meaning
- no ambiguous cross-currency summary merge
- no archival shortcut that breaks audit trail

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement saved filter UI for invoice list
- refine dashboard widget priority and density
- refine invoice detail top-section visibility
- refine payment confirmation visibility of totals/differences
- refine collection dashboard readability
- optimize phone/tablet layouts
- test multilingual overflow and fallback rendering
- test multicurrency clarity in lists and detail screens
- reduce operator clicks for common next actions

frontend_ui_requirements:
- most urgent actions must remain visible on phone
- saved filters must be understandable and easy to reuse
- warnings and authority badges must still remain obvious after polish
- multilingual text must not break critical controls
- multicurrency display must keep code/symbol clarity

frontend_forbidden:
- do not trade safety visibility for visual minimalism
- do not bury next-action controls during polishing
- do not make filter saving confusing or destructive
- do not remove critical warnings for a cleaner look

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- save filter success
- saved filter recall success where implemented
- invoice list performance smoke test
- collection dashboard performance smoke test
- phone layout critical-widget visibility
- tablet layout critical-widget visibility
- multilingual overflow checks
- multicurrency display checks
- regression checks for authority badge and ERP eligibility visibility

minimum_test_matrix:
- saved filter create
- high-traffic invoice list query
- high-traffic collection dashboard query
- phone dashboard visibility
- tablet dashboard visibility
- multilingual label overflow
- multicurrency list/detail clarity

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review daily operator speed and friction
- review dashboard priority ordering
- review saved filter usefulness
- review multilingual rendering quality
- review multicurrency clarity
- review performance improvement realism

review_focus:
- refinement must help operation, not hide meaning
- polish must preserve authority and safety signals
- speed improvements must preserve correctness

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- saved filters work where implemented
- high-traffic operational screens are meaningfully improved
- phone/tablet layouts support daily use
- multilingual expansion issues are addressed
- multicurrency display remains explicit
- regression checks pass for authority/eligibility visibility

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- redesigning core authority boundary
- replacing core APIs with different semantics
- removing explicit safety/error signaling for aesthetic reasons

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when InvoiceFlow feels practical for repeated daily use
without sacrificing the explicitness and safety established in earlier phases.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120340_PHASE_08_IMPLEMENTATION_INSTRUCTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120350_INVOICEFLOW_PHASE_A_SLICE_COMMAND_PACKS.md -->
# ============================================================
# INVOICEFLOW PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the InvoiceFlow
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.InvoiceFlow
- no Japanese literals in Java source
- additive only

slice_01_billing_cockpit_query:
  default_safe_output_root:
    - $HOME/.tmp/invoiceflow-phase-a-slice01

slice_02_settlement_exception_review_query:
  default_safe_output_root:
    - $HOME/.tmp/invoiceflow-phase-a-slice02

slice_03_snapshot_and_audit_bridge:
  default_safe_output_root:
    - $HOME/.tmp/invoiceflow-phase-a-slice03

note:
- actual stub generation should follow the fixed stub file plan and content order plan
- command packs remain the only sequence authority during later execution

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120350_INVOICEFLOW_PHASE_A_SLICE_COMMAND_PACKS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120360_INVOICEFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->
# ============================================================
# INVOICEFLOW PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-field-fill-plan

purpose:
Defines what each Phase A slice should contain once empty stubs move
into field-filled implementation-ready stubs.

global_rules:
- exact field names follow the DTO freeze exactly
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append remains separate
- no Japanese literals in Java source

slice_01_billing_cockpit_query:
  expected_fill:
    - request, response, validator, mapper, service, controller, repository, audit, config, tests

slice_02_settlement_exception_review_query:
  expected_fill:
    - request, response, validator, mapper, service, controller, repository, tests

slice_03_snapshot_and_audit_bridge:
  expected_fill:
    - snapshot model, snapshot repository, audit port, snapshot adapter, audit adapter

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120360_INVOICEFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120370_INVOICEFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->
# ============================================================
# INVOICEFLOW PHASE A IMPLEMENTATION READY COMPLETION MEMO
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-implementation-ready-completion

purpose:
Declares that InvoiceFlow Phase A planning has reached
implementation-ready status without starting real runtime generation.

completion_basis:
- competitive positioning note added
- billing collection control architecture added
- settlement exception receivable architecture added
- billing execution timeline model added
- billing cockpit and settlement exception exact payloads added
- billing cockpit interface added
- billing control implementation guide added
- Phase A DDL additive plan added
- Phase A API starter added
- Phase A DTO field freeze added
- Phase A implementation skeleton added
- stub file plan added
- module task breakdown added
- exact stub content order plan added
- slice command packs added
- slice field-fill plan added

implementation_ready_definition_met:
- the design no longer depends on unresolved major architecture questions
- the remaining work is fill-in and generation, not rediscovery
- slice-by-slice execution order is fixed
- DTO and row-family drift is constrained
- audit separation remains explicit

conclusion:
- InvoiceFlow Phase A is implementation-ready at the design level.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120370_INVOICEFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120380_INVOICEFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->
# ============================================================
# INVOICEFLOW PHASE A EXECUTION ENTRY PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-entry-protocol

purpose:
Defines the exact protocol to follow when the project later moves
from planning artifacts into actual stub generation or SQL execution.

entry_principles:
- do not begin from slice_03
- do not generate all files at once without slice order
- do not execute SQL before review
- keep additive only
- keep command packs as the sole sequence authority
- do not reopen already frozen DTO names casually

execution_start_order:
- step_01:
  - execute slice_01 command pack into a safe output root
- step_02:
  - fill slice_01 contents according to the field-fill plan
- step_03:
  - review compile surface and naming consistency
- step_04:
  - execute slice_02 command pack
- step_05:
  - fill slice_02 contents according to the field-fill plan
- step_06:
  - review cockpit-to-exception-review seam
- step_07:
  - execute slice_03 command pack
- step_08:
  - fill slice_03 contents according to the field-fill plan
- step_09:
  - review snapshot and audit seams
- step_10:
  - only after design-to-code review, prepare SQL apply pack
- step_11:
  - only after review, execute additive SQL in controlled order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120380_INVOICEFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120_INVOICE_FLOW_IMPLEMENTATION.md -->
# ============================================================
# INVOICE FLOW IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

implementation_priorities:
- invoice authority separation first
- payment confirmation routes second
- collection queue and dashboard third
- receipt issuance fourth
- ERP reflection boundary fifth

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120_INVOICE_FLOW_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120_INVOICE_FLOW_IMPLEMENTATION_INDEX.md -->
# ============================================================
# INVOICE FLOW IMPLEMENTATION INDEX
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 120_INVOICE_FLOW_IMPLEMENTATION_OVERVIEW.md
- 120_INVOICE_FLOW_IMPLEMENTATION_INDEX.md
- 120_INVOICE_FLOW_IMPLEMENTATION.md
- 120110_IMPLEMENTATION_ROADMAP.md
- 120120_PHASE_BREAKDOWN.md
- 120130_MVP_DEFINITION.md
- 120140_PHASE_EXIT_CRITERIA.md
- 120150_RISKS_AND_FRONTLOADED_DECISIONS.md
- 120160_IMPLEMENTATION_TASK_BREAKDOWN_OVERVIEW.md
- 120170_PHASE_01_TASK_BREAKDOWN.md
- 120180_PHASE_02_TASK_BREAKDOWN.md
- 120190_PHASE_03_TASK_BREAKDOWN.md
- 120200_PHASE_04_TASK_BREAKDOWN.md
- 120210_PHASE_05_TASK_BREAKDOWN.md
- 120220_PHASE_06_TASK_BREAKDOWN.md
- 120230_PHASE_07_TASK_BREAKDOWN.md
- 120240_PHASE_08_TASK_BREAKDOWN.md
- 120250_BACKEND_FRONTEND_SPLIT_NOTE.md
- 120260_TEST_STRATEGY_NOTE.md
- 120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
- 120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md
- 120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md
- 120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md
- 120310_PHASE_05_IMPLEMENTATION_INSTRUCTION.md
- 120320_PHASE_06_IMPLEMENTATION_INSTRUCTION.md
- 120330_PHASE_07_IMPLEMENTATION_INSTRUCTION.md
- 120340_PHASE_08_IMPLEMENTATION_INSTRUCTION.md

- 120300_INVOICEFLOW_BILLING_CONTROL_IMPLEMENTATION_GUIDE.md

- 120310_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120320_INVOICEFLOW_PHASE_A_STUB_FILE_PLAN.md

- 120330_INVOICEFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120340_INVOICEFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120350_INVOICEFLOW_PHASE_A_SLICE_COMMAND_PACKS.md

- 120360_INVOICEFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120370_INVOICEFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120380_INVOICEFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120_INVOICE_FLOW_IMPLEMENTATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120_INVOICE_FLOW_IMPLEMENTATION_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Implementation should preserve invoice authority boundary,
payment confirmation route clarity,
collection auditability,
and receipt traceability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/120.implementation/120_INVOICE_FLOW_IMPLEMENTATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/130.development/130_INVOICE_FLOW_DEVELOPMENT.md -->
# ============================================================
# INVOICE FLOW DEVELOPMENT
# ============================================================

status: canonical
layer: development
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

recommended_order:
1. invoice authority and policy fixation
2. model fixation
3. interface fixation
4. runtime and flow fixation
5. integration contract fixation
6. implementation planning

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/130.development/130_INVOICE_FLOW_DEVELOPMENT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/130.development/130_INVOICE_FLOW_DEVELOPMENT_INDEX.md -->
# ============================================================
# INVOICE FLOW DEVELOPMENT INDEX
# ============================================================

status: canonical
layer: development
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 130_INVOICE_FLOW_DEVELOPMENT_OVERVIEW.md
- 130_INVOICE_FLOW_DEVELOPMENT_INDEX.md
- 130_INVOICE_FLOW_DEVELOPMENT.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/130.development/130_INVOICE_FLOW_DEVELOPMENT_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/130.development/130_INVOICE_FLOW_DEVELOPMENT_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
layer: development
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Development should proceed from authority model
to core model
to interface
to runtime/flow
to integration finalization.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/130.development/130_INVOICE_FLOW_DEVELOPMENT_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900010_COMPETITOR_COMPARISON_NOTE.md -->
# ============================================================
# COMPETITOR COMPARISON NOTE
# ============================================================

status: canonical-note
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Captures the design conclusions derived from competitor comparison.

comparison_conclusion:
InvoiceFlow should not compete by becoming the heaviest accounting tool
or the deepest settlement-only specialist.
Its strongest position is an integrated operational front
that keeps invoice handling, payment confirmation,
collection management, receipt issuance,
and ERP-aware operation in one place.

design_implications:
- keep collection management first-class
- keep invoice authority visible
- keep ERP coexistence explicit
- keep realistic confirmation routes
- keep multi-device operational usability high

must_not_lose:
- simple invoice-to-payment-to-collection continuity
- operator understanding of what is ERP-master and what is not
- ease of receipt issuance after payment confirmation
- visibility of overdue and priority collection work

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900010_COMPETITOR_COMPARISON_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900020_OPEN_ISSUE_LEDGER.md -->
# ============================================================
# OPEN ISSUE LEDGER
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Tracks remaining open issues after major design fixation.

open_issues:

- issue_code: IF-OPEN-001
  title: none
  status: closed
  reason:
  - previously open wording/format issues are fixed

interpretation:
There are no remaining open issues that block design completion.
Any later changes should be treated as change requests,
not unresolved design gaps.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900020_OPEN_ISSUE_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900030_DECISION_REQUIRED_LEDGER.md -->
# ============================================================
# DECISION REQUIRED LEDGER
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Captures business decisions that still may require explicit approval.

decision_items:
- none

interpretation:
Core and minor business decisions are fixed.
Further changes are treated as future revision requests.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900030_DECISION_REQUIRED_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900040_DESIGN_COMPLETION_CHECKLIST.md -->
# ============================================================
# DESIGN COMPLETION CHECKLIST
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the checklist for calling InvoiceFlow design substantially complete.

completion_checklist:

- item_code: IF-CHECK-001
  item: application role and positioning fixed
  status: done

- item_code: IF-CHECK-002
  item: multilingual support fixed
  status: done

- item_code: IF-CHECK-003
  item: multicurrency support fixed
  status: done

- item_code: IF-CHECK-004
  item: iphone/android/pc/tablet support fixed
  status: done

- item_code: IF-CHECK-005
  item: invoice authority boundary fixed
  status: done

- item_code: IF-CHECK-006
  item: screen structure fixed
  status: done

- item_code: IF-CHECK-007
  item: state transitions fixed
  status: done

- item_code: IF-CHECK-008
  item: permission boundaries fixed
  status: done

- item_code: IF-CHECK-009
  item: API exact payload fixed
  status: done

- item_code: IF-CHECK-010
  item: DB physical guidance fixed
  status: done

- item_code: IF-CHECK-011
  item: implementation roadmap fixed
  status: done

- item_code: IF-CHECK-012
  item: non-functional requirements fixed
  status: done

- item_code: IF-CHECK-013
  item: audit event ledger fixed
  status: done

- item_code: IF-CHECK-014
  item: unresolved decision ledger prepared
  status: done

- item_code: IF-CHECK-015
  item: integrated reading bundle created
  status: done

completion_rule:
InvoiceFlow design may be treated as substantially complete
when all major design bundles are fixed and remaining items
are limited to explicit business decisions rather than missing structure.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900040_DESIGN_COMPLETION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900050_DESIGN_CLOSURE_NOTE.md -->
# ============================================================
# DESIGN CLOSURE NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes why the design can be considered near-complete.

closure_summary:
InvoiceFlow now has:
- role and positioning
- authority boundary
- architecture
- model
- runtime
- flow
- interface
- security
- exact API payloads
- physical data guidance
- implementation roadmap
- operations/policy/non-functional reinforcement
- integrated reading bundle
- unresolved decision ledger

closure_interpretation:
At this point,
remaining work is mainly:
- explicit business approvals
- optional refinement
- implementation execution
not major missing design structure.

recommended_next_use:
- use as implementation handoff
- use as review baseline
- use as approval package
- use as integrated reading source

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900050_DESIGN_CLOSURE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900060_REVIEW_REQUEST_NOTE.md -->
# ============================================================
# REVIEW REQUEST NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines recommended review viewpoints before implementation.

review_viewpoints:
- business boundary review
- invoice authority review
- ERP coexistence review
- collection workflow realism review
- payment confirmation exception review
- receipt issuance auditability review
- multilingual and multicurrency review
- mobile/tablet usability review
- DB and API consistency review

recommended_review_order:
1. business meaning and authority boundary
2. screen and flow realism
3. security and exception handling
4. api and db exact consistency
5. implementation roadmap feasibility

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900060_REVIEW_REQUEST_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900070_IMPLEMENTATION_HANDOFF_NOTE.md -->
# ============================================================
# IMPLEMENTATION HANDOFF NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides direct handoff guidance from design to implementation.

implementation_handoff_summary:
- core authority boundary is fixed
- FRONT_LOCAL and ERP_MASTER distinction is fixed
- screen structure is fixed
- state transitions are fixed
- permission boundaries are fixed
- exact API payloads are fixed
- physical DB guidance is fixed
- implementation phases are fixed

implementation_start_order:
1. phase 01 authority and base model
2. phase 02 front invoice core
3. phase 03 manual payment confirmation
4. phase 04 receipt issuance
5. phase 05 collection management
6. phase 06 bank match flow
7. phase 07 ERP reflection
8. phase 08 refinement

implementation_guardrails:
- do not blur FRONT_LOCAL and ERP_MASTER
- do not allow ERP reflection on non-eligible paths
- do not issue receipt without confirmed payment
- do not hide overdue/priority state in UI
- do not bypass audit for elevated actions

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900070_IMPLEMENTATION_HANDOFF_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900080_OUT_OF_SCOPE_LEDGER.md -->
# ============================================================
# OUT OF SCOPE LEDGER
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines what is intentionally outside the current InvoiceFlow design scope.

out_of_scope_items:
- formal ERP invoice-master creation inside InvoiceFlow
- full accounting ledger functionality
- formal ERP-side final settlement truth
- payment gateway orchestration as a core product theme
- full BI/reporting warehouse design
- cross-application shared component formal design
- advanced ML-based collection scoring
- advanced bank auto-reconciliation beyond current front-side scope

scope_rule:
If a requirement contradicts the current authority boundary,
it must be treated as a scope review item,
not as an implementation shortcut.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900080_OUT_OF_SCOPE_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900090_FINAL_REVIEW_CHECKPOINTS.md -->
# ============================================================
# FINAL REVIEW CHECKPOINTS
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines final review checkpoints before calling design complete.

checkpoints:
- FRONT_LOCAL / ERP_MASTER meaning is unambiguous
- ERP reflection denial path is explicit
- invoice pdf and receipt pdf policies are consistent
- payment confirmation routes are realistic
- collection workflow is operationally usable
- receipt reissue keeps linkage and auditability
- API payloads and DB fields align
- mobile/tablet visibility of critical actions is preserved
- unresolved decisions are explicit and limited
- implementation roadmap is realistic

final_review_interpretation:
If all checkpoints pass,
remaining work is decision/approval refinement
or direct implementation,
not missing design structure.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900090_FINAL_REVIEW_CHECKPOINTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900100_DESIGN_COMPLETION_DECLARATION.md -->
# ============================================================
# DESIGN COMPLETION DECLARATION
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Formally declares the design completion level of InvoiceFlow.

declaration:
InvoiceFlow design has reached a level that may be treated
as substantially complete for implementation handoff.

meaning:
- major structural design is fixed
- major operational design is fixed
- major interface and state design is fixed
- exact integration payload design is fixed
- physical persistence guidance is fixed
- remaining undecided items are explicit business decisions,
  not missing core design

recommended_usage:
- implementation handoff
- approval review
- integrated reading
- final architecture baseline

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900100_DESIGN_COMPLETION_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900110_MASTER_RESTART_NOTE.md -->
# ============================================================
# MASTER RESTART NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a restart entry for future continuation chats.

restart_from_here:
When restarting work on InvoiceFlow,
begin from:
1. 000_INVOICE_FLOW_OVERVIEW.md
2. 000_INVOICE_FLOW_INDEX.md
3. 00_INVOICE_FLOW_INTEGRATED.md
4. 900.meta/900040_DESIGN_COMPLETION_CHECKLIST.md
5. 900.meta/900020_OPEN_ISSUE_LEDGER.md
6. 900.meta/900070_IMPLEMENTATION_HANDOFF_NOTE.md

restart_focus:
- review unresolved decisions
- confirm implementation phase target
- proceed without reopening settled authority boundaries

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900110_MASTER_RESTART_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900120_FINAL_DESIGN_SUMMARY.md -->
# ============================================================
# FINAL DESIGN SUMMARY
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the final summary of InvoiceFlow design.

final_summary:
InvoiceFlow is designed as:
- invoice front
- payment confirmation front
- collection management front
- receipt issuance front
- ERP-aware operational front

core_boundary:
- FRONT_LOCAL invoices are application-created and application-managed
- ERP_MASTER invoices are ERP-mastered and only operationally handled here
- FRONT_LOCAL must never masquerade as ERP_MASTER
- ERP reflection must obey explicit eligibility rules

core_capabilities:
- invoice creation
- invoice PDF generation
- send request handling
- manual payment confirmation
- bank-linked payment confirmation
- simple reconciliation
- receipt issuance and reissue
- overdue and collection management
- customer outstanding visibility
- ERP payment-result reflection for eligible paths

global_requirements:
- multilingual support
- multicurrency support
- iphone support
- android support
- pc support
- tablet support

completion_position:
Design is substantially complete for implementation handoff.
Remaining items are explicit business decisions or tenant policy choices,
not missing structural design.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900120_FINAL_DESIGN_SUMMARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900130_READING_ORDER_NOTE.md -->
# ============================================================
# READING ORDER NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides recommended reading order by use-case.

reading_orders:

- use_case: business review
  order:
  - 000_INVOICE_FLOW_OVERVIEW.md
  - 010.constitution/010_INVOICE_FLOW_CONSTITUTION.md
  - 020.architecture/020160_COMPETITIVE_POSITION_ARCHITECTURE.md
  - 080.policy/080110_INVOICE_AUTHORITY_POLICY.md
  - 080.policy/080150_COMPETITIVE_DIFFERENTIATION_POLICY.md
  - 900.meta/900050_DESIGN_CLOSURE_NOTE.md

- use_case: implementation start
  order:
  - 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
  - 120.implementation/120120_PHASE_BREAKDOWN.md
  - 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
  - 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
  - 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
  - 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
  - 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
  - 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
  - 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

- use_case: ui review
  order:
  - 090.interface/090_INVOICE_FLOW_INTERFACE.md
  - 090.interface/090110_SCREEN_LIST_INTERFACE.md
  - 090.interface/090120_DASHBOARD_INTERFACE.md
  - 090.interface/090130_INVOICE_DETAIL_INTERFACE.md
  - 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
  - 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
  - 090.interface/090160_RECEIPT_INTERFACE.md

- use_case: final full reading
  order:
  - 00_INVOICE_FLOW_INTEGRATED.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900130_READING_ORDER_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900140_IMPLEMENTATION_START_PACKAGE_NOTE.md -->
# ============================================================
# IMPLEMENTATION START PACKAGE NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact package to use when implementation begins.

implementation_start_package:
- 000_INVOICE_FLOW_OVERVIEW.md
- 000_INVOICE_FLOW_INDEX.md
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
- 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md
- 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
- 120.implementation/120120_PHASE_BREAKDOWN.md

note:
This package is enough to begin implementation without reopening major design meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900140_IMPLEMENTATION_START_PACKAGE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900150_FORMAL_COMPLETION_NOTE.md -->
# ============================================================
# FORMAL COMPLETION NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Formally states the design completion interpretation.

formal_statement:
InvoiceFlow may now be treated as design-complete enough
for implementation planning, implementation handoff,
review, and restart continuation.

completion_meaning:
- architecture fixed
- data model fixed
- screen structure fixed
- state and permission model fixed
- exact API contract fixed
- physical persistence guidance fixed
- implementation roadmap fixed
- remaining uncertainties are explicitly ledgered

not_included_in_completion_meaning:
- all business approvals are finalized
- all tenant-specific policies are finalized
- implementation has started

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900150_FORMAL_COMPLETION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900160_NEXT_STAGE_OPTIONS_NOTE.md -->
# ============================================================
# NEXT STAGE OPTIONS NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines sensible next-stage options after design completion.

next_stage_options:
- start implementation phase breakdown execution
- produce implementation handoff bundle for another chat
- produce review-request bundle for business stakeholders
- produce screen wireframe/detail refinement bundle
- produce ddl-oriented bundle
- produce api/backend task split bundle
- produce frontend/mobile task split bundle

recommendation:
The strongest next step is implementation-oriented task splitting
based on IF-PHASE-01 through IF-PHASE-08.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900160_NEXT_STAGE_OPTIONS_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900170_IMPLEMENTATION_READY_NOTE.md -->
# ============================================================
# IMPLEMENTATION READY NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
States that implementation preparation is now fully structured.

implementation_ready_statement:
InvoiceFlow now has:
- design-complete baseline
- exact API contracts
- physical persistence guidance
- phase-by-phase implementation instructions from IF-PHASE-01 to IF-PHASE-08
- review checkpoints
- restart guidance
- integrated reading bundle

meaning:
Implementation can begin phase-by-phase
without reopening major structural design questions.

recommended_next_action:
Begin actual implementation execution from IF-PHASE-01
and use later phase instruction files as the execution queue.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900170_IMPLEMENTATION_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900180_IMPLEMENTATION_HANDOFF_PACKAGE.md -->
# ============================================================
# IMPLEMENTATION HANDOFF PACKAGE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a direct implementation handoff package
for a new chat or a new implementer.

# ============================================================
# 1. WHAT THIS APP IS
# ============================================================

app_definition:
InvoiceFlow is:
- invoice front
- payment confirmation front
- collection management front
- receipt issuance front
- ERP-aware operational front

core_boundary:
- FRONT_LOCAL is application-created and application-managed
- ERP_MASTER is ERP-mastered and only operationally handled here
- FRONT_LOCAL must never masquerade as ERP_MASTER
- ERP reflection is only for eligible ERP_MASTER paths

# ============================================================
# 2. FIRST FILES TO READ
# ============================================================

first_read_order:
1. 000_INVOICE_FLOW_OVERVIEW.md
2. 000_INVOICE_FLOW_INDEX.md
3. 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
4. 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
5. 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
6. 060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md
7. 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md
8. 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
9. 120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
10. 00_INVOICE_FLOW_INTEGRATED.md

# ============================================================
# 3. IMPLEMENTATION ORDER
# ============================================================

implementation_order:
- IF-PHASE-01 Authority And Base Model
- IF-PHASE-02 Front Invoice Core
- IF-PHASE-03 Manual Payment Confirmation
- IF-PHASE-04 Receipt Issuance
- IF-PHASE-05 Collection Management
- IF-PHASE-06 Bank Match Flow
- IF-PHASE-07 ERP Reflection
- IF-PHASE-08 Refinement And Operator Optimization

# ============================================================
# 4. PHASE INSTRUCTION FILES
# ============================================================

phase_instruction_files:
- 120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120310_PHASE_05_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120320_PHASE_06_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120330_PHASE_07_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120340_PHASE_08_IMPLEMENTATION_INSTRUCTION.md

# ============================================================
# 5. DO NOT BREAK THESE
# ============================================================

critical_guardrails:
- never blur FRONT_LOCAL and ERP_MASTER
- never allow ERP reflection on non-eligible path
- never issue receipt without confirmed payment
- never hide authority badge or ERP eligibility warning
- never auto-finalize ambiguous bank match
- never destructively overwrite financial history when additive trace is required
- never bypass audit on elevated actions
- never lose company scope enforcement

# ============================================================
# 6. WHEN YOU RESTART LATER
# ============================================================

restart_rule:
If work resumes later,
do not reopen settled architectural meaning first.
Instead:
1. read 900.meta/900110_MASTER_RESTART_NOTE.md
2. read 900.meta/900170_IMPLEMENTATION_READY_NOTE.md
3. select current target phase
4. execute only that phase's instruction file
5. keep later phases queued, not mixed

# ============================================================
# 7. IF SOMETHING FEELS UNCLEAR
# ============================================================

clarity_rule:
Before changing meaning,
check these first:
- 080.policy/080110_INVOICE_AUTHORITY_POLICY.md
- 080.policy/080120_RECEIPT_POLICY.md
- 080.policy/080130_COLLECTION_PRIORITY_POLICY.md
- 080.policy/080140_FAIL_CLOSED_POLICY.md
- 080.policy/080180_SIMPLE_RECONCILIATION_POLICY.md

# ============================================================
# 8. OPEN DECISIONS
# ============================================================

open_decision_files:
- 900.meta/900020_OPEN_ISSUE_LEDGER.md
- 900.meta/900030_DECISION_REQUIRED_LEDGER.md

rule_for_open_decisions:
Open decisions are explicit business choices.
Do not silently choose in implementation if the choice changes meaning.

# ============================================================
# 9. FASTEST IMPLEMENTATION START PACKAGE
# ============================================================

fast_start_package:
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md

# ============================================================
# 10. FINAL INTERPRETATION
# ============================================================

final_interpretation:
This handoff package means InvoiceFlow is ready for implementation
without reopening core design structure.
Remaining uncertainty is mostly business decision selection,
not missing architecture.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900180_IMPLEMENTATION_HANDOFF_PACKAGE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900190_APPROVED_DECISION_REFLECTION_NOTE.md -->
# ============================================================
# APPROVED DECISION REFLECTION NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Notes that previously open business decisions have now been approved and reflected.

reflection_summary:
The following previously open decision areas are now fixed:
- receipt numbering format
- FRONT_LOCAL invoice footer authority note
- bank launch strategy
- customer master authority rule
- default send channels
- post-send correction rule
- receipt reissue rule
- multicurrency summary rule
- language fallback order
- receipt issuing authority interpretation

interpretation:
InvoiceFlow now has fewer unresolved business choices.
The remaining uncertainty level is no longer structural.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900190_APPROVED_DECISION_REFLECTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900200_FINAL_DECISION_CLOSURE_NOTE.md -->
# ============================================================
# FINAL DECISION CLOSURE NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
States that minor open decisions are now closed.

closure_summary:
The following are now fixed:
- FRONT_LOCAL invoice footer wording
- receipt serial digit width
- reissue wording
- authority badge wording
- ERP non-eligibility wording
- currency display format
- language fallback display rule
- share-link launch rule
- final display-level visibility rules

closure_interpretation:
InvoiceFlow no longer has meaningful unresolved design decisions.
It may be treated as fully design-complete for implementation handoff.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900200_FINAL_DECISION_CLOSURE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900410_INVOICEFLOW_20260416_DIFF_AUDIT_NOTE.md -->
# ============================================================
# INVOICEFLOW 20260416 DIFF AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: diff-audit-note

purpose:
Records the first differential reinforcement bundle applied to the
existing InvoiceFlow design.

preserved_core:
- invoice and billing operation identity
- existing business flow role
- existing architecture layers
- existing ERP and adjacent financial flow direction
- existing platform direction

added_in_this_bundle:
- competitive positioning note
- billing collection control architecture
- settlement exception receivable architecture
- billing execution timeline model
- billing cockpit exact payload
- settlement exception review exact payload
- billing cockpit interface note
- billing control implementation guide

why_this_bundle:
- existing InvoiceFlow design already had strong invoice handling
- what was less explicit was the lifecycle-control layer above raw billing processing
- this bundle makes the app more implementation-ready without rewriting its base

recommended_next_step:
- proceed to Phase A entry documents for execution timeline, DDL, DTO freeze,
  and slice-based execution planning

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900410_INVOICEFLOW_20260416_DIFF_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900420_INVOICEFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->
# ============================================================
# INVOICEFLOW 20260416 BUNDLE02 PHASE A AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle02-phase-a-audit

purpose:
Records the second reinforcement bundle applied to InvoiceFlow,
covering Phase A entry documents and exact implementation-start
boundaries.

bundle02_contents:
- 020.architecture/021140_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_DDL_ADDITIVE_PLAN.md
- 060.integration/060320_INVOICEFLOW_PHASE_A_API_STARTER.md
- 060.integration/060330_INVOICEFLOW_PHASE_A_API_DTO_FIELD_FREEZE.md
- 120.implementation/120310_INVOICEFLOW_PHASE_A_BILLING_EXECUTION_TIMELINE_IMPLEMENTATION_SKELETON.md

result:
- Phase A DDL direction fixed
- Phase A endpoint set fixed
- API DTO field set frozen
- implementation skeleton fixed
- InvoiceFlow now has the same kind of Phase A entry footing
  that made the previous apps easier to continue in bundled form

recommended_next_step:
- proceed to bundle_03 for stub file plan, module task breakdown, and content order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900420_INVOICEFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900430_INVOICEFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->
# ============================================================
# INVOICEFLOW 20260416 BUNDLE03 STUB AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle03-stub-audit

purpose:
Records the third reinforcement bundle applied to InvoiceFlow,
covering the stub planning boundary for Phase A.

bundle03_contents:
- 120.implementation/120320_INVOICEFLOW_PHASE_A_STUB_FILE_PLAN.md
- 120.implementation/120330_INVOICEFLOW_PHASE_A_MODULE_TASK_BREAKDOWN.md
- 120.implementation/120340_INVOICEFLOW_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

result:
- stub file boundary fixed
- module task order fixed
- exact stub content order fixed
- InvoiceFlow now has a bundled Phase A planning posture
  similar to the previously completed apps before command-pack generation

recommended_next_step:
- proceed to bundle_04 for command packs, field-fill plans, and closure

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900430_INVOICEFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900440_INVOICEFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->
# ============================================================
# INVOICEFLOW 20260416 BUNDLE04 CLOSEOUT AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle04-closeout-audit

purpose:
Records the fourth reinforcement bundle applied to InvoiceFlow,
closing the Phase A planning layer at an implementation-ready state.

bundle04_contents:
- 120.implementation/120350_INVOICEFLOW_PHASE_A_SLICE_COMMAND_PACKS.md
- 120.implementation/120360_INVOICEFLOW_PHASE_A_SLICE_FIELD_FILL_PLAN.md
- 120.implementation/120370_INVOICEFLOW_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md
- 120.implementation/120380_INVOICEFLOW_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

result:
- slice command packs fixed
- field-fill plan fixed
- implementation-ready completion declared
- execution entry protocol fixed
- InvoiceFlow planning can stop here cleanly unless execution begins or contradiction appears

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900440_INVOICEFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900450_INVOICEFLOW_NEXT_APP_TRANSITION_HANDOFF.md -->
# ============================================================
# INVOICEFLOW NEXT APP TRANSITION HANDOFF
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: next-app-transition-handoff

purpose:
Closes the current InvoiceFlow planning stream cleanly and makes it
easy to move to the next BusinessOS application without reopening
already-settled InvoiceFlow planning questions.

current_status_summary:
- differential reinforcement completed
- bundle_01 completed
- bundle_02 Phase A entry completed
- bundle_03 stub planning completed
- bundle_04 closeout completed
- implementation-ready completion memo completed
- execution entry protocol completed

handoff_statement:
- InvoiceFlow can now be treated as planning-closed and
  next-app-transition-ready.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900450_INVOICEFLOW_NEXT_APP_TRANSITION_HANDOFF.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900460_INVOICEFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->
# ============================================================
# INVOICEFLOW REUSABLE PHASEA REINFORCEMENT RECIPE
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: reusable-phasea-reinforcement-recipe

purpose:
Captures the reusable reinforcement recipe proven during the
InvoiceFlow planning work so the next BusinessOS app can be
advanced faster and with fewer unnecessary micro-iterations.

default_bundle_strategy_for_next_app:
- bundle_01:
  - diff reinforcement plus audit
- bundle_02:
  - Phase A entry plus DDL plus DTO freeze
- bundle_03:
  - stub plan plus module tasks plus content order
- bundle_04:
  - command packs plus field-fill plans plus closure

success_definition_for_next_app:
- the next app reaches implementation-ready planning state
- the BusinessOS ledger reflects the new status
- the app can move to execution later without rediscovering core design intent

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900460_INVOICEFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900470_INVOICEFLOW_PLANNING_STOP_RULE_NOTE.md -->
# ============================================================
# INVOICEFLOW PLANNING STOP RULE NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: planning-stop-rule-note

purpose:
Defines the stop rule for the InvoiceFlow planning layer so that
the project does not continue adding design documents without need.

default_stop_rule:
- stop adding planning artifacts once implementation-ready status,
  execution entry protocol, and transition handoff are all present

default_action_after_stop_rule:
- either begin actual generation using the execution entry protocol
- or move to the next BusinessOS application

closure_statement:
- InvoiceFlow planning should now be considered complete by default.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900470_INVOICEFLOW_PLANNING_STOP_RULE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900_INVOICE_FLOW_META_INDEX.md -->
# ============================================================
# INVOICE FLOW META INDEX
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

files:
- 900_INVOICE_FLOW_META_OVERVIEW.md
- 900_INVOICE_FLOW_META_INDEX.md
- 900010_COMPETITOR_COMPARISON_NOTE.md
- 900020_OPEN_ISSUE_LEDGER.md
- 900030_DECISION_REQUIRED_LEDGER.md
- 900040_DESIGN_COMPLETION_CHECKLIST.md
- 900050_DESIGN_CLOSURE_NOTE.md
- 900060_REVIEW_REQUEST_NOTE.md
- 900070_IMPLEMENTATION_HANDOFF_NOTE.md
- 900080_OUT_OF_SCOPE_LEDGER.md
- 900090_FINAL_REVIEW_CHECKPOINTS.md
- 900100_DESIGN_COMPLETION_DECLARATION.md
- 900110_MASTER_RESTART_NOTE.md
- 900120_FINAL_DESIGN_SUMMARY.md
- 900130_READING_ORDER_NOTE.md
- 900140_IMPLEMENTATION_START_PACKAGE_NOTE.md
- 900150_FORMAL_COMPLETION_NOTE.md
- 900160_NEXT_STAGE_OPTIONS_NOTE.md
- 900170_IMPLEMENTATION_READY_NOTE.md
- 900180_IMPLEMENTATION_HANDOFF_PACKAGE.md
- 900190_APPROVED_DECISION_REFLECTION_NOTE.md
- 900200_FINAL_DECISION_CLOSURE_NOTE.md

- 900410_INVOICEFLOW_20260416_DIFF_AUDIT_NOTE.md

- 900420_INVOICEFLOW_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 900430_INVOICEFLOW_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 900440_INVOICEFLOW_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900450_INVOICEFLOW_NEXT_APP_TRANSITION_HANDOFF.md

- 900460_INVOICEFLOW_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900470_INVOICEFLOW_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900_INVOICE_FLOW_META_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900_INVOICE_FLOW_META_OVERVIEW.md -->
# ============================================================
# INVOICE FLOW META OVERVIEW
# ============================================================

status: canonical
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

summary:
Meta layer stores checks,
review notes,
and future validation artifacts for InvoiceFlow.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/InvoiceFlow/900.meta/900_INVOICE_FLOW_META_OVERVIEW.md -->
