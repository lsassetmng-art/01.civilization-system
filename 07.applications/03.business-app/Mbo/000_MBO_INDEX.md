# ============================================================
# MBO INDEX
# ============================================================

status: canonical
system: applications
application: Mbo
owner: Boss
prepared_by: Zero

purpose:
Provides the top-level navigation index
for the full Mbo design set.

global_requirements:
- multilingual support is mandatory
- multi-currency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

top_level_documents:
- 000_MBO_INDEX.md
- 000_MBO_OVERVIEW.md
- 00_MBO_INTEGRATED.md

layer_folders:
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.meta

major_design_entries:

  constitution:
    main_docs:
      - 0100001_MBO_CONSTITUTION_OVERVIEW.md
      - 0100002_MBO_APPLICATION_CONSTITUTION.md

  architecture:
    main_docs:
      - 0200002_MBO_APPLICATION_ARCHITECTURE.md
      - 0200003_MBO_SCREEN_ARCHITECTURE.md
      - 0200005_MBO_RIVAL_COMPARISON_ARCHITECTURE.md
      - 0200006_MBO_FEATURE_PRIORITY_ARCHITECTURE.md
      - 0200007_MBO_EXPANDED_FEATURE_ARCHITECTURE.md
      - 0200008_MBO_EXPANDED_SCREEN_ARCHITECTURE.md
      - 0200009_MBO_SCREEN_DETAIL_ARCHITECTURE.md
      - 0200010_MBO_DASHBOARD_AND_KPI_ARCHITECTURE.md

  model:
    main_docs:
      - 0300001_MBO_MODEL_OVERVIEW.md
      - 0300002_MBO_OBJECTIVE_MODEL.md
      - 0300003_MBO_ACTION_PLAN_MODEL.md
      - 0300004_MBO_PROGRESS_LOG_MODEL.md
      - 0300005_MBO_REVIEW_MODEL.md
      - 0300006_MBO_EVALUATION_MODEL.md
      - 0300007_MBO_EXPANDED_MODEL_SUPPLEMENT.md

  runtime:
    main_docs:
      - 0400001_MBO_RUNTIME_OVERVIEW.md
      - 0400005_MBO_STATE_TRANSITION_RUNTIME.md
      - 0400006_MBO_FINAL_LOCK_RUNTIME.md

  flow:
    main_docs:
      - 0500001_MBO_FLOW_OVERVIEW.md
      - 0500004_MBO_ERP_TRANSFER_FLOW.md

  integration:
    main_docs:
      - 0600004_MBO_ERP_INTEGRATION.md
      - 0600005_MBO_EXPANDED_INTEGRATION_ARCHITECTURE.md
      - 0600007_MBO_ERP_EXACT_OUTBOUND_PAYLOAD.md

  operations:
    main_docs:
      - 0700001_MBO_OPERATIONS_OVERVIEW.md
      - 0700004_MBO_EXPANDED_OPERATIONS.md
      - 0700005_MBO_ALERT_AND_REMINDER_OPERATIONS.md
      - 0700006_MBO_EXCEPTION_OPERATIONS.md
      - 0700007_MBO_DASHBOARD_AND_KPI_OPERATIONS.md

  policy:
    main_docs:
      - 0800002_MBO_EVALUATION_POLICY.md
      - 0800003_MBO_LOCK_AND_REOPEN_POLICY.md
      - 0800004_MBO_REOPEN_GOVERNANCE_POLICY.md

  security:
    main_docs:
      - 1000002_MBO_ACCESS_CONTROL_SECURITY.md
      - 1000003_MBO_PERMISSION_MATRIX_SECURITY.md
      - 1000004_MBO_REOPEN_GOVERNANCE_SECURITY.md

  infrastructure:
    main_docs:
      - 1100001_MBO_INFRASTRUCTURE_OVERVIEW.md

  implementation:
    main_docs:
      - 1200001_MBO_IMPLEMENTATION_OVERVIEW.md
      - 1200005_MBO_EXPANDED_IMPLEMENTATION_SCOPE.md
      - 1200006_MBO_SCREEN_IMPLEMENTATION_DETAIL.md
      - 1200007_MBO_API_EXACT_PAYLOAD.md
      - 1200008_MBO_PERMISSION_MATRIX_IMPLEMENTATION.md
      - 1200009_MBO_STATE_AND_LOCK_IMPLEMENTATION.md
      - 1200010_MBO_ERP_OUTBOUND_IMPLEMENTATION.md
      - 1200011_MBO_ALERT_AND_REMINDER_IMPLEMENTATION.md
      - 1200012_MBO_REOPEN_GOVERNANCE_IMPLEMENTATION.md
      - 1200013_MBO_DASHBOARD_AND_KPI_IMPLEMENTATION.md

  development:
    main_docs:
      - 1300002_MBO_PHASE_PLAN.md

  meta:
    main_docs:
      - 9000004_MBO_A_B_SCOPE_SUMMARY.md
      - 9000007_MBO_API_FIXATION_SUMMARY.md
      - 9000008_MBO_PERMISSION_MATRIX_SUMMARY.md
      - 9000009_MBO_STATE_LOCK_SUMMARY.md
      - 9000010_MBO_ERP_PAYLOAD_SUMMARY.md
      - 9000011_MBO_ALERT_REMINDER_SUMMARY.md
      - 9000012_MBO_REOPEN_GOVERNANCE_SUMMARY.md
      - 9000013_MBO_DASHBOARD_KPI_SUMMARY.md

current_design_position:
Mbo is now fixed as an execution-centered
goal and evaluation management application
with A+B scope, governed final lock,
ERP outbound payload fixation,
alert/reminder rules,
reopen governance,
and dashboard/KPI calculation rules.
