# ============================================================
# POCKETSECRETARY PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for PocketSecretary
Phase A stub generation.

baseline_documents:
- Phase A DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A stub file plan
- Phase A module task breakdown

global_rules:
- additive only
- DTO field names match the freeze document exactly
- controller stays thin
- service owns orchestration
- repository owns persistence only
- audit append stays separate

content_order_strategy:
- start from dependency-light files
- lock contracts first
- write ports before adapters
- write tests after service boundaries are clear

phase_01_common_error_contract:
  files:
    - api/dto/common/ErrorResponse.java

phase_02_request_dto_contracts:
  files:
    - api/dto/assistant/request/ActionPlanProposeRequest.java
    - api/dto/assistant/request/ActionPlanConfirmRequest.java
    - api/dto/assistant/request/DailyBriefingQueryRequest.java

phase_03_response_dto_contracts:
  files:
    - api/dto/assistant/response/ActionPlanProposeResponse.java
    - api/dto/assistant/response/ActionPlanConfirmResponse.java
    - api/dto/assistant/response/DailyBriefingQueryResponse.java

phase_04_validators:
  files:
    - application/validator/assistant/ActionPlanProposeValidator.java
    - application/validator/assistant/ActionPlanConfirmValidator.java
    - application/validator/assistant/DailyBriefingQueryValidator.java

phase_05_domain_models:
  files:
    - domain/model/assistant/ActionPlanCandidate.java
    - domain/model/assistant/AssistantActionTimelineItem.java
    - domain/model/assistant/DailyBriefingSnapshot.java

phase_06_domain_ports:
  files:
    - domain/port/assistant/ActionPlanCandidateRepository.java
    - domain/port/assistant/ActionTimelineRepository.java
    - domain/port/assistant/DailyBriefingSnapshotRepository.java
    - domain/port/assistant/PocketSecretaryAuditPort.java

phase_07_mappers:
  files:
    - application/mapper/assistant/ActionPlanProposeMapper.java
    - application/mapper/assistant/ActionPlanConfirmMapper.java
    - application/mapper/assistant/DailyBriefingQueryMapper.java

phase_08_services:
  files:
    - application/service/assistant/ActionPlanProposeService.java
    - application/service/assistant/ActionPlanConfirmService.java
    - application/service/assistant/DailyBriefingQueryService.java

phase_09_controllers:
  files:
    - api/controller/assistant/ActionPlanProposeController.java
    - api/controller/assistant/ActionPlanConfirmController.java
    - api/controller/assistant/DailyBriefingQueryController.java

phase_10_repository_adapters:
  files:
    - infrastructure/repository/assistant/JdbcActionPlanCandidateRepository.java
    - infrastructure/repository/assistant/JdbcActionTimelineRepository.java
    - infrastructure/repository/assistant/JdbcDailyBriefingSnapshotRepository.java

phase_11_audit_adapter:
  files:
    - infrastructure/audit/assistant/DatabasePocketSecretaryAuditAdapter.java

phase_12_configuration:
  files:
    - config/assistant/PocketSecretaryPhaseAConfig.java

phase_13_tests:
  files:
    - src/test/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanProposeServiceTest.java
    - src/test/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanConfirmServiceTest.java
    - src/test/java/com/lsam/PocketSecretary/application/service/assistant/DailyBriefingQueryServiceTest.java

first_slice_recommended_start:
- ErrorResponse
- ActionPlanProposeRequest
- ActionPlanProposeResponse
- ActionPlanProposeValidator
- ActionPlanCandidate
- ActionPlanCandidateRepository
- ActionPlanProposeMapper
- ActionPlanProposeService
- ActionPlanProposeController
- JdbcActionPlanCandidateRepository
- DatabasePocketSecretaryAuditAdapter
- PocketSecretaryPhaseAConfig
- ActionPlanProposeServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the propose endpoint as the narrowest first vertical slice
- delays confirm and daily briefing until the candidate path is stable
