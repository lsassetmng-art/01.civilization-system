# ============================================================
# ESTIMATECREATOR PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: EstimateCreator
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the EstimateCreator
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.EstimateCreator
- no Japanese literals in Java source
- additive only

slice_01_estimate_cockpit_query:
  goal:
    - create the first vertical slice for estimate cockpit visibility
  target_files:
    - api/dto/common/ErrorResponse.java
    - api/dto/commercial/request/EstimateCockpitQueryRequest.java
    - api/dto/commercial/response/EstimateCockpitQueryResponse.java
    - application/validator/commercial/EstimateCockpitQueryValidator.java
    - domain/model/commercial/EstimateCommercialTimelineItem.java
    - domain/port/commercial/CommercialTimelineRepository.java
    - application/mapper/commercial/EstimateCockpitQueryMapper.java
    - application/service/commercial/EstimateCockpitQueryService.java
    - api/controller/commercial/EstimateCockpitQueryController.java
    - infrastructure/repository/commercial/JdbcCommercialTimelineRepository.java
    - infrastructure/audit/commercial/DatabaseEstimateCreatorAuditAdapter.java
    - config/commercial/EstimateCreatorPhaseAConfig.java
    - src/test/java/com/lsam/EstimateCreator/application/service/commercial/EstimateCockpitQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/estimatecreator-phase-a-slice01
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/estimatecreator-phase-a-slice01}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/EstimateCreator"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/EstimateCreator"

      mkdir -p \
        "$SRC_MAIN/api/dto/common" \
        "$SRC_MAIN/api/dto/commercial/request" \
        "$SRC_MAIN/api/dto/commercial/response" \
        "$SRC_MAIN/application/validator/commercial" \
        "$SRC_MAIN/domain/model/commercial" \
        "$SRC_MAIN/domain/port/commercial" \
        "$SRC_MAIN/application/mapper/commercial" \
        "$SRC_MAIN/application/service/commercial" \
        "$SRC_MAIN/api/controller/commercial" \
        "$SRC_MAIN/infrastructure/repository/commercial" \
        "$SRC_MAIN/infrastructure/audit/commercial" \
        "$SRC_MAIN/config/commercial" \
        "$SRC_TEST/application/service/commercial"

      cat > "$SRC_MAIN/api/dto/common/ErrorResponse.java" <<'EOF'
      package com.lsam.EstimateCreator.api.dto.common;

      public class ErrorResponse {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/commercial/request/EstimateCockpitQueryRequest.java" <<'EOF'
      package com.lsam.EstimateCreator.api.dto.commercial.request;

      public class EstimateCockpitQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/commercial/response/EstimateCockpitQueryResponse.java" <<'EOF'
      package com.lsam.EstimateCreator.api.dto.commercial.response;

      public class EstimateCockpitQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/commercial/EstimateCockpitQueryValidator.java" <<'EOF'
      package com.lsam.EstimateCreator.application.validator.commercial;

      public class EstimateCockpitQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/commercial/EstimateCommercialTimelineItem.java" <<'EOF'
      package com.lsam.EstimateCreator.domain.model.commercial;

      public class EstimateCommercialTimelineItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/commercial/CommercialTimelineRepository.java" <<'EOF'
      package com.lsam.EstimateCreator.domain.port.commercial;

      public interface CommercialTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/commercial/EstimateCockpitQueryMapper.java" <<'EOF'
      package com.lsam.EstimateCreator.application.mapper.commercial;

      public class EstimateCockpitQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/commercial/EstimateCockpitQueryService.java" <<'EOF'
      package com.lsam.EstimateCreator.application.service.commercial;

      public class EstimateCockpitQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/commercial/EstimateCockpitQueryController.java" <<'EOF'
      package com.lsam.EstimateCreator.api.controller.commercial;

      public class EstimateCockpitQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/commercial/JdbcCommercialTimelineRepository.java" <<'EOF'
      package com.lsam.EstimateCreator.infrastructure.repository.commercial;

      public class JdbcCommercialTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/commercial/DatabaseEstimateCreatorAuditAdapter.java" <<'EOF'
      package com.lsam.EstimateCreator.infrastructure.audit.commercial;

      public class DatabaseEstimateCreatorAuditAdapter {
      }
      EOF

      cat > "$SRC_MAIN/config/commercial/EstimateCreatorPhaseAConfig.java" <<'EOF'
      package com.lsam.EstimateCreator.config.commercial;

      public class EstimateCreatorPhaseAConfig {
      }
      EOF

      cat > "$SRC_TEST/application/service/commercial/EstimateCockpitQueryServiceTest.java" <<'EOF'
      package com.lsam.EstimateCreator.application.service.commercial;

      public class EstimateCockpitQueryServiceTest {
      }
      EOF

slice_02_revision_approval_review_query:
  goal:
    - expose revision and approval review rows
  target_files:
    - api/dto/commercial/request/RevisionApprovalReviewQueryRequest.java
    - api/dto/commercial/response/RevisionApprovalReviewQueryResponse.java
    - application/validator/commercial/RevisionApprovalReviewQueryValidator.java
    - domain/model/commercial/RevisionApprovalReviewItem.java
    - domain/port/commercial/RevisionApprovalReviewRepository.java
    - application/mapper/commercial/RevisionApprovalReviewQueryMapper.java
    - application/service/commercial/RevisionApprovalReviewQueryService.java
    - api/controller/commercial/RevisionApprovalReviewQueryController.java
    - infrastructure/repository/commercial/JdbcRevisionApprovalReviewRepository.java
    - src/test/java/com/lsam/EstimateCreator/application/service/commercial/RevisionApprovalReviewQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/estimatecreator-phase-a-slice02
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/estimatecreator-phase-a-slice02}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/EstimateCreator"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/EstimateCreator"

      mkdir -p \
        "$SRC_MAIN/api/dto/commercial/request" \
        "$SRC_MAIN/api/dto/commercial/response" \
        "$SRC_MAIN/application/validator/commercial" \
        "$SRC_MAIN/domain/model/commercial" \
        "$SRC_MAIN/domain/port/commercial" \
        "$SRC_MAIN/application/mapper/commercial" \
        "$SRC_MAIN/application/service/commercial" \
        "$SRC_MAIN/api/controller/commercial" \
        "$SRC_MAIN/infrastructure/repository/commercial" \
        "$SRC_TEST/application/service/commercial"

      cat > "$SRC_MAIN/api/dto/commercial/request/RevisionApprovalReviewQueryRequest.java" <<'EOF'
      package com.lsam.EstimateCreator.api.dto.commercial.request;

      public class RevisionApprovalReviewQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/commercial/response/RevisionApprovalReviewQueryResponse.java" <<'EOF'
      package com.lsam.EstimateCreator.api.dto.commercial.response;

      public class RevisionApprovalReviewQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/commercial/RevisionApprovalReviewQueryValidator.java" <<'EOF'
      package com.lsam.EstimateCreator.application.validator.commercial;

      public class RevisionApprovalReviewQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/commercial/RevisionApprovalReviewItem.java" <<'EOF'
      package com.lsam.EstimateCreator.domain.model.commercial;

      public class RevisionApprovalReviewItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/commercial/RevisionApprovalReviewRepository.java" <<'EOF'
      package com.lsam.EstimateCreator.domain.port.commercial;

      public interface RevisionApprovalReviewRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/commercial/RevisionApprovalReviewQueryMapper.java" <<'EOF'
      package com.lsam.EstimateCreator.application.mapper.commercial;

      public class RevisionApprovalReviewQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/commercial/RevisionApprovalReviewQueryService.java" <<'EOF'
      package com.lsam.EstimateCreator.application.service.commercial;

      public class RevisionApprovalReviewQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/commercial/RevisionApprovalReviewQueryController.java" <<'EOF'
      package com.lsam.EstimateCreator.api.controller.commercial;

      public class RevisionApprovalReviewQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/commercial/JdbcRevisionApprovalReviewRepository.java" <<'EOF'
      package com.lsam.EstimateCreator.infrastructure.repository.commercial;

      public class JdbcRevisionApprovalReviewRepository {
      }
      EOF

      cat > "$SRC_TEST/application/service/commercial/RevisionApprovalReviewQueryServiceTest.java" <<'EOF'
      package com.lsam.EstimateCreator.application.service.commercial;

      public class RevisionApprovalReviewQueryServiceTest {
      }
      EOF

slice_03_snapshot_and_audit_bridge:
  goal:
    - expose optional cockpit snapshot persistence and explicit audit seams
  target_files:
    - domain/model/commercial/EstimateCockpitSnapshot.java
    - domain/port/commercial/EstimateCockpitSnapshotRepository.java
    - domain/port/commercial/EstimateCreatorAuditPort.java
    - infrastructure/repository/commercial/JdbcEstimateCockpitSnapshotRepository.java
    - infrastructure/audit/commercial/DatabaseEstimateCreatorAuditAdapter.java
  default_safe_output_root:
    - $HOME/.tmp/estimatecreator-phase-a-slice03
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/estimatecreator-phase-a-slice03}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/EstimateCreator"

      mkdir -p \
        "$SRC_MAIN/domain/model/commercial" \
        "$SRC_MAIN/domain/port/commercial" \
        "$SRC_MAIN/infrastructure/repository/commercial" \
        "$SRC_MAIN/infrastructure/audit/commercial"

      cat > "$SRC_MAIN/domain/model/commercial/EstimateCockpitSnapshot.java" <<'EOF'
      package com.lsam.EstimateCreator.domain.model.commercial;

      public class EstimateCockpitSnapshot {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/commercial/EstimateCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.EstimateCreator.domain.port.commercial;

      public interface EstimateCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/commercial/EstimateCreatorAuditPort.java" <<'EOF'
      package com.lsam.EstimateCreator.domain.port.commercial;

      public interface EstimateCreatorAuditPort {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/commercial/JdbcEstimateCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.EstimateCreator.infrastructure.repository.commercial;

      public class JdbcEstimateCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/commercial/DatabaseEstimateCreatorAuditAdapter.java" <<'EOF'
      package com.lsam.EstimateCreator.infrastructure.audit.commercial;

      public class DatabaseEstimateCreatorAuditAdapter {
      }
      EOF
