# ============================================================
# PROJECTFLOW PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProjectFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the ProjectFlow
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.ProjectFlow
- no Japanese literals in Java source
- additive only

slice_01_project_cockpit_query:
  goal:
    - create the first vertical slice for project cockpit visibility
  target_files:
    - api/dto/common/ErrorResponse.java
    - api/dto/delivery/request/ProjectCockpitQueryRequest.java
    - api/dto/delivery/response/ProjectCockpitQueryResponse.java
    - application/validator/delivery/ProjectCockpitQueryValidator.java
    - domain/model/delivery/ProjectDeliveryTimelineItem.java
    - domain/port/delivery/DeliveryTimelineRepository.java
    - application/mapper/delivery/ProjectCockpitQueryMapper.java
    - application/service/delivery/ProjectCockpitQueryService.java
    - api/controller/delivery/ProjectCockpitQueryController.java
    - infrastructure/repository/delivery/JdbcDeliveryTimelineRepository.java
    - infrastructure/audit/delivery/DatabaseProjectFlowAuditAdapter.java
    - config/delivery/ProjectFlowPhaseAConfig.java
    - src/test/java/com/lsam/ProjectFlow/application/service/delivery/ProjectCockpitQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/projectflow-phase-a-slice01
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/projectflow-phase-a-slice01}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/ProjectFlow"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/ProjectFlow"

      mkdir -p \
        "$SRC_MAIN/api/dto/common" \
        "$SRC_MAIN/api/dto/delivery/request" \
        "$SRC_MAIN/api/dto/delivery/response" \
        "$SRC_MAIN/application/validator/delivery" \
        "$SRC_MAIN/domain/model/delivery" \
        "$SRC_MAIN/domain/port/delivery" \
        "$SRC_MAIN/application/mapper/delivery" \
        "$SRC_MAIN/application/service/delivery" \
        "$SRC_MAIN/api/controller/delivery" \
        "$SRC_MAIN/infrastructure/repository/delivery" \
        "$SRC_MAIN/infrastructure/audit/delivery" \
        "$SRC_MAIN/config/delivery" \
        "$SRC_TEST/application/service/delivery"

      cat > "$SRC_MAIN/api/dto/common/ErrorResponse.java" <<'EOF'
      package com.lsam.ProjectFlow.api.dto.common;

      public class ErrorResponse {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/delivery/request/ProjectCockpitQueryRequest.java" <<'EOF'
      package com.lsam.ProjectFlow.api.dto.delivery.request;

      public class ProjectCockpitQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/delivery/response/ProjectCockpitQueryResponse.java" <<'EOF'
      package com.lsam.ProjectFlow.api.dto.delivery.response;

      public class ProjectCockpitQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/delivery/ProjectCockpitQueryValidator.java" <<'EOF'
      package com.lsam.ProjectFlow.application.validator.delivery;

      public class ProjectCockpitQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/delivery/ProjectDeliveryTimelineItem.java" <<'EOF'
      package com.lsam.ProjectFlow.domain.model.delivery;

      public class ProjectDeliveryTimelineItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/delivery/DeliveryTimelineRepository.java" <<'EOF'
      package com.lsam.ProjectFlow.domain.port.delivery;

      public interface DeliveryTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/delivery/ProjectCockpitQueryMapper.java" <<'EOF'
      package com.lsam.ProjectFlow.application.mapper.delivery;

      public class ProjectCockpitQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/delivery/ProjectCockpitQueryService.java" <<'EOF'
      package com.lsam.ProjectFlow.application.service.delivery;

      public class ProjectCockpitQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/delivery/ProjectCockpitQueryController.java" <<'EOF'
      package com.lsam.ProjectFlow.api.controller.delivery;

      public class ProjectCockpitQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/delivery/JdbcDeliveryTimelineRepository.java" <<'EOF'
      package com.lsam.ProjectFlow.infrastructure.repository.delivery;

      public class JdbcDeliveryTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/delivery/DatabaseProjectFlowAuditAdapter.java" <<'EOF'
      package com.lsam.ProjectFlow.infrastructure.audit.delivery;

      public class DatabaseProjectFlowAuditAdapter {
      }
      EOF

      cat > "$SRC_MAIN/config/delivery/ProjectFlowPhaseAConfig.java" <<'EOF'
      package com.lsam.ProjectFlow.config.delivery;

      public class ProjectFlowPhaseAConfig {
      }
      EOF

      cat > "$SRC_TEST/application/service/delivery/ProjectCockpitQueryServiceTest.java" <<'EOF'
      package com.lsam.ProjectFlow.application.service.delivery;

      public class ProjectCockpitQueryServiceTest {
      }
      EOF

slice_02_risk_dependency_review_query:
  goal:
    - expose dependency and risk review rows
  target_files:
    - api/dto/delivery/request/RiskDependencyReviewQueryRequest.java
    - api/dto/delivery/response/RiskDependencyReviewQueryResponse.java
    - application/validator/delivery/RiskDependencyReviewQueryValidator.java
    - domain/model/delivery/DependencyReviewItem.java
    - domain/port/delivery/DependencyReviewRepository.java
    - application/mapper/delivery/RiskDependencyReviewQueryMapper.java
    - application/service/delivery/RiskDependencyReviewQueryService.java
    - api/controller/delivery/RiskDependencyReviewQueryController.java
    - infrastructure/repository/delivery/JdbcDependencyReviewRepository.java
    - src/test/java/com/lsam/ProjectFlow/application/service/delivery/RiskDependencyReviewQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/projectflow-phase-a-slice02
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/projectflow-phase-a-slice02}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/ProjectFlow"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/ProjectFlow"

      mkdir -p \
        "$SRC_MAIN/api/dto/delivery/request" \
        "$SRC_MAIN/api/dto/delivery/response" \
        "$SRC_MAIN/application/validator/delivery" \
        "$SRC_MAIN/domain/model/delivery" \
        "$SRC_MAIN/domain/port/delivery" \
        "$SRC_MAIN/application/mapper/delivery" \
        "$SRC_MAIN/application/service/delivery" \
        "$SRC_MAIN/api/controller/delivery" \
        "$SRC_MAIN/infrastructure/repository/delivery" \
        "$SRC_TEST/application/service/delivery"

      cat > "$SRC_MAIN/api/dto/delivery/request/RiskDependencyReviewQueryRequest.java" <<'EOF'
      package com.lsam.ProjectFlow.api.dto.delivery.request;

      public class RiskDependencyReviewQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/delivery/response/RiskDependencyReviewQueryResponse.java" <<'EOF'
      package com.lsam.ProjectFlow.api.dto.delivery.response;

      public class RiskDependencyReviewQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/delivery/RiskDependencyReviewQueryValidator.java" <<'EOF'
      package com.lsam.ProjectFlow.application.validator.delivery;

      public class RiskDependencyReviewQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/delivery/DependencyReviewItem.java" <<'EOF'
      package com.lsam.ProjectFlow.domain.model.delivery;

      public class DependencyReviewItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/delivery/DependencyReviewRepository.java" <<'EOF'
      package com.lsam.ProjectFlow.domain.port.delivery;

      public interface DependencyReviewRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/delivery/RiskDependencyReviewQueryMapper.java" <<'EOF'
      package com.lsam.ProjectFlow.application.mapper.delivery;

      public class RiskDependencyReviewQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/delivery/RiskDependencyReviewQueryService.java" <<'EOF'
      package com.lsam.ProjectFlow.application.service.delivery;

      public class RiskDependencyReviewQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/delivery/RiskDependencyReviewQueryController.java" <<'EOF'
      package com.lsam.ProjectFlow.api.controller.delivery;

      public class RiskDependencyReviewQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/delivery/JdbcDependencyReviewRepository.java" <<'EOF'
      package com.lsam.ProjectFlow.infrastructure.repository.delivery;

      public class JdbcDependencyReviewRepository {
      }
      EOF

      cat > "$SRC_TEST/application/service/delivery/RiskDependencyReviewQueryServiceTest.java" <<'EOF'
      package com.lsam.ProjectFlow.application.service.delivery;

      public class RiskDependencyReviewQueryServiceTest {
      }
      EOF

slice_03_snapshot_and_audit_bridge:
  goal:
    - expose optional cockpit snapshot persistence and explicit audit seams
  target_files:
    - domain/model/delivery/ProjectCockpitSnapshot.java
    - domain/port/delivery/ProjectCockpitSnapshotRepository.java
    - domain/port/delivery/ProjectFlowAuditPort.java
    - infrastructure/repository/delivery/JdbcProjectCockpitSnapshotRepository.java
    - infrastructure/audit/delivery/DatabaseProjectFlowAuditAdapter.java
  default_safe_output_root:
    - $HOME/.tmp/projectflow-phase-a-slice03
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/projectflow-phase-a-slice03}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/ProjectFlow"

      mkdir -p \
        "$SRC_MAIN/domain/model/delivery" \
        "$SRC_MAIN/domain/port/delivery" \
        "$SRC_MAIN/infrastructure/repository/delivery" \
        "$SRC_MAIN/infrastructure/audit/delivery"

      cat > "$SRC_MAIN/domain/model/delivery/ProjectCockpitSnapshot.java" <<'EOF'
      package com.lsam.ProjectFlow.domain.model.delivery;

      public class ProjectCockpitSnapshot {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/delivery/ProjectCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.ProjectFlow.domain.port.delivery;

      public interface ProjectCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/delivery/ProjectFlowAuditPort.java" <<'EOF'
      package com.lsam.ProjectFlow.domain.port.delivery;

      public interface ProjectFlowAuditPort {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/delivery/JdbcProjectCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.ProjectFlow.infrastructure.repository.delivery;

      public class JdbcProjectCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/delivery/DatabaseProjectFlowAuditAdapter.java" <<'EOF'
      package com.lsam.ProjectFlow.infrastructure.audit.delivery;

      public class DatabaseProjectFlowAuditAdapter {
      }
      EOF
