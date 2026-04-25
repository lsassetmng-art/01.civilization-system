# ============================================================
# AI OPERATION DESK INDEX
# ============================================================

status: draft-fixed
app: AIOperationDesk
category: 03.business-app
owner: Boss
prepared_by: Zero

root_files:
- 000_INDEX.md
- 001_OVERVIEW.md
- 00_AIOPERATIONDESK_INTEGRATED_CANONICAL.md

directories:
- 010.constitution
- 020.architecture
- 030.model
- 040.api
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 900.meta

major_design_docs:
- 010.constitution/010000_AIOPERATIONDESK_MISSION_BOUNDARY_AND_SCOPE.md
- 020.architecture/020000_AIOPERATIONDESK_ARCHITECTURE_OVERVIEW.md
- 030.model/030000_AIOPERATIONDESK_DOMAIN_MODEL_OVERVIEW.md
- 040.api/040000_AIOPERATIONDESK_API_SURFACE_OVERVIEW.md
- 050.flow/050000_AIOPERATIONDESK_CORE_STATEFLOW_OVERVIEW.md
- 060.integration/060000_AIOPERATIONDESK_INTEGRATION_BOUNDARY_OVERVIEW.md
- 070.operations/070000_AIOPERATIONDESK_OPERATION_MODEL_OVERVIEW.md
- 080.policy/080000_AIOPERATIONDESK_POLICY_OVERVIEW.md
- 100.security/100000_AIOPERATIONDESK_SECURITY_OVERVIEW.md
- 120.implementation/120000_AIOPERATIONDESK_IMPLEMENTATION_APPLY_ORDER.md

freeze_targets:
- 070010_AIOPERATIONDESK_TARGET_WORK_LEDGER_FREEZE.md
- 060010_AIOPERATIONDESK_SUPPORTED_APP_REGISTRY_AND_CONNECTOR_TAXONOMY_FREEZE.md
- 080010_AIOPERATIONDESK_RISK_CLASS_REVIEW_APPROVAL_MATRIX_FREEZE.md
- 050010_AIOPERATIONDESK_RESIDENT_SURFACE_AND_EXECUTION_FLOW_FREEZE.md

notes:
- AI Operation Desk is the governed operational hub, not the canonical owner of AI worker truth.
- AiworkerOS owns worker truth.
- BusinessOS owns business-side contract / dispatch / billing / ERP linkage truth.
- cx22073jw is the AI-worker-only read view surface.
