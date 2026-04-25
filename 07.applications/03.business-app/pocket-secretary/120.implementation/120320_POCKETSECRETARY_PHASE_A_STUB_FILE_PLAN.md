# ============================================================
# POCKETSECRETARY PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
PocketSecretary Phase A action continuity.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence only
- audit append stays separate

target_package_base:
- com.lsam.PocketSecretary

target_server_source_root_example:
- src/main/java/com/lsam/PocketSecretary

target_test_source_root_example:
- src/test/java/com/lsam/PocketSecretary

phase_a_scope_modules:
- action plan propose
- action plan confirm
- daily briefing query
- audit write bridge

recommended_stub_tree:
- src/main/java/com/lsam/PocketSecretary/api/controller/assistant/ActionPlanProposeController.java
- src/main/java/com/lsam/PocketSecretary/api/controller/assistant/ActionPlanConfirmController.java
- src/main/java/com/lsam/PocketSecretary/api/controller/assistant/DailyBriefingQueryController.java

- src/main/java/com/lsam/PocketSecretary/api/dto/assistant/request/ActionPlanProposeRequest.java
- src/main/java/com/lsam/PocketSecretary/api/dto/assistant/request/ActionPlanConfirmRequest.java
- src/main/java/com/lsam/PocketSecretary/api/dto/assistant/request/DailyBriefingQueryRequest.java

- src/main/java/com/lsam/PocketSecretary/api/dto/assistant/response/ActionPlanProposeResponse.java
- src/main/java/com/lsam/PocketSecretary/api/dto/assistant/response/ActionPlanConfirmResponse.java
- src/main/java/com/lsam/PocketSecretary/api/dto/assistant/response/DailyBriefingQueryResponse.java
- src/main/java/com/lsam/PocketSecretary/api/dto/common/ErrorResponse.java

- src/main/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanProposeService.java
- src/main/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanConfirmService.java
- src/main/java/com/lsam/PocketSecretary/application/service/assistant/DailyBriefingQueryService.java

- src/main/java/com/lsam/PocketSecretary/application/validator/assistant/ActionPlanProposeValidator.java
- src/main/java/com/lsam/PocketSecretary/application/validator/assistant/ActionPlanConfirmValidator.java
- src/main/java/com/lsam/PocketSecretary/application/validator/assistant/DailyBriefingQueryValidator.java

- src/main/java/com/lsam/PocketSecretary/application/mapper/assistant/ActionPlanProposeMapper.java
- src/main/java/com/lsam/PocketSecretary/application/mapper/assistant/ActionPlanConfirmMapper.java
- src/main/java/com/lsam/PocketSecretary/application/mapper/assistant/DailyBriefingQueryMapper.java

- src/main/java/com/lsam/PocketSecretary/domain/model/assistant/ActionPlanCandidate.java
- src/main/java/com/lsam/PocketSecretary/domain/model/assistant/AssistantActionTimelineItem.java
- src/main/java/com/lsam/PocketSecretary/domain/model/assistant/DailyBriefingSnapshot.java

- src/main/java/com/lsam/PocketSecretary/domain/port/assistant/ActionPlanCandidateRepository.java
- src/main/java/com/lsam/PocketSecretary/domain/port/assistant/ActionTimelineRepository.java
- src/main/java/com/lsam/PocketSecretary/domain/port/assistant/DailyBriefingSnapshotRepository.java
- src/main/java/com/lsam/PocketSecretary/domain/port/assistant/PocketSecretaryAuditPort.java

- src/main/java/com/lsam/PocketSecretary/infrastructure/repository/assistant/JdbcActionPlanCandidateRepository.java
- src/main/java/com/lsam/PocketSecretary/infrastructure/repository/assistant/JdbcActionTimelineRepository.java
- src/main/java/com/lsam/PocketSecretary/infrastructure/repository/assistant/JdbcDailyBriefingSnapshotRepository.java
- src/main/java/com/lsam/PocketSecretary/infrastructure/audit/assistant/DatabasePocketSecretaryAuditAdapter.java

- src/main/java/com/lsam/PocketSecretary/config/assistant/PocketSecretaryPhaseAConfig.java

- src/test/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanProposeServiceTest.java
- src/test/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanConfirmServiceTest.java
- src/test/java/com/lsam/PocketSecretary/application/service/assistant/DailyBriefingQueryServiceTest.java

file_role_notes:
- controller:
  - request entry
  - auth context handoff
  - response return only
- dto:
  - exact API contract
- validator:
  - required field and boundary checks
- mapper:
  - dto to domain and domain to response conversion
- service:
  - use case orchestration
- domain model:
  - runtime meaning carrier
- port:
  - stable repository and audit boundary
- jdbc repository:
  - SQL-backed adapter
- audit adapter:
  - append-only audit bridge
- config:
  - bean wiring and module isolation

minimum_stub_creation_order:
- 01 common error dto
- 02 request and response dto
- 03 validators
- 04 domain models
- 05 domain ports
- 06 mappers
- 07 services
- 08 controllers
- 09 jdbc repositories
- 10 audit adapter
- 11 config
- 12 service tests

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- daily briefing response fields must remain aligned to the fixed payload family
