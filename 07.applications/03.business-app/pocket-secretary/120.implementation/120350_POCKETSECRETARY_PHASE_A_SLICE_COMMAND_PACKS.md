# ============================================================
# POCKETSECRETARY PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the three
PocketSecretary Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.PocketSecretary
- no Japanese literals in Java source
- additive only

slice_01_action_plan_propose:
  goal:
    - create the narrowest first vertical slice for candidate extraction
  target_files:
    - api/dto/common/ErrorResponse.java
    - api/dto/assistant/request/ActionPlanProposeRequest.java
    - api/dto/assistant/response/ActionPlanProposeResponse.java
    - application/validator/assistant/ActionPlanProposeValidator.java
    - domain/model/assistant/ActionPlanCandidate.java
    - domain/port/assistant/ActionPlanCandidateRepository.java
    - application/mapper/assistant/ActionPlanProposeMapper.java
    - application/service/assistant/ActionPlanProposeService.java
    - api/controller/assistant/ActionPlanProposeController.java
    - infrastructure/repository/assistant/JdbcActionPlanCandidateRepository.java
    - infrastructure/audit/assistant/DatabasePocketSecretaryAuditAdapter.java
    - config/assistant/PocketSecretaryPhaseAConfig.java
    - src/test/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanProposeServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/pocketsecretary-phase-a-slice01
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/pocketsecretary-phase-a-slice01}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/PocketSecretary"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/PocketSecretary"

      mkdir -p \
        "$SRC_MAIN/api/dto/common" \
        "$SRC_MAIN/api/dto/assistant/request" \
        "$SRC_MAIN/api/dto/assistant/response" \
        "$SRC_MAIN/application/validator/assistant" \
        "$SRC_MAIN/domain/model/assistant" \
        "$SRC_MAIN/domain/port/assistant" \
        "$SRC_MAIN/application/mapper/assistant" \
        "$SRC_MAIN/application/service/assistant" \
        "$SRC_MAIN/api/controller/assistant" \
        "$SRC_MAIN/infrastructure/repository/assistant" \
        "$SRC_MAIN/infrastructure/audit/assistant" \
        "$SRC_MAIN/config/assistant" \
        "$SRC_TEST/application/service/assistant"

      cat > "$SRC_MAIN/api/dto/common/ErrorResponse.java" <<'EOF'
      package com.lsam.PocketSecretary.api.dto.common;

      public class ErrorResponse {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/assistant/request/ActionPlanProposeRequest.java" <<'EOF'
      package com.lsam.PocketSecretary.api.dto.assistant.request;

      public class ActionPlanProposeRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/assistant/response/ActionPlanProposeResponse.java" <<'EOF'
      package com.lsam.PocketSecretary.api.dto.assistant.response;

      public class ActionPlanProposeResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/assistant/ActionPlanProposeValidator.java" <<'EOF'
      package com.lsam.PocketSecretary.application.validator.assistant;

      public class ActionPlanProposeValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/assistant/ActionPlanCandidate.java" <<'EOF'
      package com.lsam.PocketSecretary.domain.model.assistant;

      public class ActionPlanCandidate {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/assistant/ActionPlanCandidateRepository.java" <<'EOF'
      package com.lsam.PocketSecretary.domain.port.assistant;

      public interface ActionPlanCandidateRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/assistant/ActionPlanProposeMapper.java" <<'EOF'
      package com.lsam.PocketSecretary.application.mapper.assistant;

      public class ActionPlanProposeMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/assistant/ActionPlanProposeService.java" <<'EOF'
      package com.lsam.PocketSecretary.application.service.assistant;

      public class ActionPlanProposeService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/assistant/ActionPlanProposeController.java" <<'EOF'
      package com.lsam.PocketSecretary.api.controller.assistant;

      public class ActionPlanProposeController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/assistant/JdbcActionPlanCandidateRepository.java" <<'EOF'
      package com.lsam.PocketSecretary.infrastructure.repository.assistant;

      public class JdbcActionPlanCandidateRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/assistant/DatabasePocketSecretaryAuditAdapter.java" <<'EOF'
      package com.lsam.PocketSecretary.infrastructure.audit.assistant;

      public class DatabasePocketSecretaryAuditAdapter {
      }
      EOF

      cat > "$SRC_MAIN/config/assistant/PocketSecretaryPhaseAConfig.java" <<'EOF'
      package com.lsam.PocketSecretary.config.assistant;

      public class PocketSecretaryPhaseAConfig {
      }
      EOF

      cat > "$SRC_TEST/application/service/assistant/ActionPlanProposeServiceTest.java" <<'EOF'
      package com.lsam.PocketSecretary.application.service.assistant;

      public class ActionPlanProposeServiceTest {
      }
      EOF

slice_02_action_plan_confirm:
  goal:
    - commit selected candidates into assistant action timeline rows
  target_files:
    - api/dto/assistant/request/ActionPlanConfirmRequest.java
    - api/dto/assistant/response/ActionPlanConfirmResponse.java
    - application/validator/assistant/ActionPlanConfirmValidator.java
    - domain/model/assistant/AssistantActionTimelineItem.java
    - domain/port/assistant/ActionTimelineRepository.java
    - application/mapper/assistant/ActionPlanConfirmMapper.java
    - application/service/assistant/ActionPlanConfirmService.java
    - api/controller/assistant/ActionPlanConfirmController.java
    - infrastructure/repository/assistant/JdbcActionTimelineRepository.java
    - src/test/java/com/lsam/PocketSecretary/application/service/assistant/ActionPlanConfirmServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/pocketsecretary-phase-a-slice02
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/pocketsecretary-phase-a-slice02}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/PocketSecretary"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/PocketSecretary"

      mkdir -p \
        "$SRC_MAIN/api/dto/assistant/request" \
        "$SRC_MAIN/api/dto/assistant/response" \
        "$SRC_MAIN/application/validator/assistant" \
        "$SRC_MAIN/domain/model/assistant" \
        "$SRC_MAIN/domain/port/assistant" \
        "$SRC_MAIN/application/mapper/assistant" \
        "$SRC_MAIN/application/service/assistant" \
        "$SRC_MAIN/api/controller/assistant" \
        "$SRC_MAIN/infrastructure/repository/assistant" \
        "$SRC_TEST/application/service/assistant"

      cat > "$SRC_MAIN/api/dto/assistant/request/ActionPlanConfirmRequest.java" <<'EOF'
      package com.lsam.PocketSecretary.api.dto.assistant.request;

      public class ActionPlanConfirmRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/assistant/response/ActionPlanConfirmResponse.java" <<'EOF'
      package com.lsam.PocketSecretary.api.dto.assistant.response;

      public class ActionPlanConfirmResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/assistant/ActionPlanConfirmValidator.java" <<'EOF'
      package com.lsam.PocketSecretary.application.validator.assistant;

      public class ActionPlanConfirmValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/assistant/AssistantActionTimelineItem.java" <<'EOF'
      package com.lsam.PocketSecretary.domain.model.assistant;

      public class AssistantActionTimelineItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/assistant/ActionTimelineRepository.java" <<'EOF'
      package com.lsam.PocketSecretary.domain.port.assistant;

      public interface ActionTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/assistant/ActionPlanConfirmMapper.java" <<'EOF'
      package com.lsam.PocketSecretary.application.mapper.assistant;

      public class ActionPlanConfirmMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/assistant/ActionPlanConfirmService.java" <<'EOF'
      package com.lsam.PocketSecretary.application.service.assistant;

      public class ActionPlanConfirmService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/assistant/ActionPlanConfirmController.java" <<'EOF'
      package com.lsam.PocketSecretary.api.controller.assistant;

      public class ActionPlanConfirmController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/assistant/JdbcActionTimelineRepository.java" <<'EOF'
      package com.lsam.PocketSecretary.infrastructure.repository.assistant;

      public class JdbcActionTimelineRepository {
      }
      EOF

      cat > "$SRC_TEST/application/service/assistant/ActionPlanConfirmServiceTest.java" <<'EOF'
      package com.lsam.PocketSecretary.application.service.assistant;

      public class ActionPlanConfirmServiceTest {
      }
      EOF

slice_03_daily_briefing_query:
  goal:
    - expose today, overdue, and awaiting-confirmation items through one briefing query
  target_files:
    - api/dto/assistant/request/DailyBriefingQueryRequest.java
    - api/dto/assistant/response/DailyBriefingQueryResponse.java
    - application/validator/assistant/DailyBriefingQueryValidator.java
    - domain/model/assistant/DailyBriefingSnapshot.java
    - domain/port/assistant/DailyBriefingSnapshotRepository.java
    - application/mapper/assistant/DailyBriefingQueryMapper.java
    - application/service/assistant/DailyBriefingQueryService.java
    - api/controller/assistant/DailyBriefingQueryController.java
    - infrastructure/repository/assistant/JdbcDailyBriefingSnapshotRepository.java
    - src/test/java/com/lsam/PocketSecretary/application/service/assistant/DailyBriefingQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/pocketsecretary-phase-a-slice03
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/pocketsecretary-phase-a-slice03}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/PocketSecretary"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/PocketSecretary"

      mkdir -p \
        "$SRC_MAIN/api/dto/assistant/request" \
        "$SRC_MAIN/api/dto/assistant/response" \
        "$SRC_MAIN/application/validator/assistant" \
        "$SRC_MAIN/domain/model/assistant" \
        "$SRC_MAIN/domain/port/assistant" \
        "$SRC_MAIN/application/mapper/assistant" \
        "$SRC_MAIN/application/service/assistant" \
        "$SRC_MAIN/api/controller/assistant" \
        "$SRC_MAIN/infrastructure/repository/assistant" \
        "$SRC_TEST/application/service/assistant"

      cat > "$SRC_MAIN/api/dto/assistant/request/DailyBriefingQueryRequest.java" <<'EOF'
      package com.lsam.PocketSecretary.api.dto.assistant.request;

      public class DailyBriefingQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/assistant/response/DailyBriefingQueryResponse.java" <<'EOF'
      package com.lsam.PocketSecretary.api.dto.assistant.response;

      public class DailyBriefingQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/assistant/DailyBriefingQueryValidator.java" <<'EOF'
      package com.lsam.PocketSecretary.application.validator.assistant;

      public class DailyBriefingQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/assistant/DailyBriefingSnapshot.java" <<'EOF'
      package com.lsam.PocketSecretary.domain.model.assistant;

      public class DailyBriefingSnapshot {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/assistant/DailyBriefingSnapshotRepository.java" <<'EOF'
      package com.lsam.PocketSecretary.domain.port.assistant;

      public interface DailyBriefingSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/assistant/DailyBriefingQueryMapper.java" <<'EOF'
      package com.lsam.PocketSecretary.application.mapper.assistant;

      public class DailyBriefingQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/assistant/DailyBriefingQueryService.java" <<'EOF'
      package com.lsam.PocketSecretary.application.service.assistant;

      public class DailyBriefingQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/assistant/DailyBriefingQueryController.java" <<'EOF'
      package com.lsam.PocketSecretary.api.controller.assistant;

      public class DailyBriefingQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/assistant/JdbcDailyBriefingSnapshotRepository.java" <<'EOF'
      package com.lsam.PocketSecretary.infrastructure.repository.assistant;

      public class JdbcDailyBriefingSnapshotRepository {
      }
      EOF

      cat > "$SRC_TEST/application/service/assistant/DailyBriefingQueryServiceTest.java" <<'EOF'
      package com.lsam.PocketSecretary.application.service.assistant;

      public class DailyBriefingQueryServiceTest {
      }
      EOF
