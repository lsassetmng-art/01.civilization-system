# ============================================================
# ORDERFLOW PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the OrderFlow
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.OrderFlow
- no Japanese literals in Java source
- additive only

slice_01_order_cockpit_query:
  goal:
    - create the first vertical slice for order cockpit visibility
  target_files:
    - api/dto/common/ErrorResponse.java
    - api/dto/execution/request/OrderCockpitQueryRequest.java
    - api/dto/execution/response/OrderCockpitQueryResponse.java
    - application/validator/execution/OrderCockpitQueryValidator.java
    - domain/model/execution/OrderExecutionTimelineItem.java
    - domain/port/execution/ExecutionTimelineRepository.java
    - application/mapper/execution/OrderCockpitQueryMapper.java
    - application/service/execution/OrderCockpitQueryService.java
    - api/controller/execution/OrderCockpitQueryController.java
    - infrastructure/repository/execution/JdbcExecutionTimelineRepository.java
    - infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java
    - config/execution/OrderFlowPhaseAConfig.java
    - src/test/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/orderflow-phase-a-slice01
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/orderflow-phase-a-slice01}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/OrderFlow"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/OrderFlow"

      mkdir -p \
        "$SRC_MAIN/api/dto/common" \
        "$SRC_MAIN/api/dto/execution/request" \
        "$SRC_MAIN/api/dto/execution/response" \
        "$SRC_MAIN/application/validator/execution" \
        "$SRC_MAIN/domain/model/execution" \
        "$SRC_MAIN/domain/port/execution" \
        "$SRC_MAIN/application/mapper/execution" \
        "$SRC_MAIN/application/service/execution" \
        "$SRC_MAIN/api/controller/execution" \
        "$SRC_MAIN/infrastructure/repository/execution" \
        "$SRC_MAIN/infrastructure/audit/execution" \
        "$SRC_MAIN/config/execution" \
        "$SRC_TEST/application/service/execution"

      cat > "$SRC_MAIN/api/dto/common/ErrorResponse.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.common;

      public class ErrorResponse {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/execution/request/OrderCockpitQueryRequest.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.request;

      public class OrderCockpitQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/execution/response/OrderCockpitQueryResponse.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.response;

      public class OrderCockpitQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/execution/OrderCockpitQueryValidator.java" <<'EOF'
      package com.lsam.OrderFlow.application.validator.execution;

      public class OrderCockpitQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/execution/OrderExecutionTimelineItem.java" <<'EOF'
      package com.lsam.OrderFlow.domain.model.execution;

      public class OrderExecutionTimelineItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/ExecutionTimelineRepository.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface ExecutionTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/execution/OrderCockpitQueryMapper.java" <<'EOF'
      package com.lsam.OrderFlow.application.mapper.execution;

      public class OrderCockpitQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/execution/OrderCockpitQueryService.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class OrderCockpitQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/execution/OrderCockpitQueryController.java" <<'EOF'
      package com.lsam.OrderFlow.api.controller.execution;

      public class OrderCockpitQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/execution/JdbcExecutionTimelineRepository.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.repository.execution;

      public class JdbcExecutionTimelineRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.audit.execution;

      public class DatabaseOrderFlowAuditAdapter {
      }
      EOF

      cat > "$SRC_MAIN/config/execution/OrderFlowPhaseAConfig.java" <<'EOF'
      package com.lsam.OrderFlow.config.execution;

      public class OrderFlowPhaseAConfig {
      }
      EOF

      cat > "$SRC_TEST/application/service/execution/OrderCockpitQueryServiceTest.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class OrderCockpitQueryServiceTest {
      }
      EOF

slice_02_fulfillment_exception_review_query:
  goal:
    - expose fulfillment and downstream exception review rows
  target_files:
    - api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java
    - api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java
    - application/validator/execution/FulfillmentExceptionReviewQueryValidator.java
    - domain/model/execution/FulfillmentExceptionReviewItem.java
    - domain/port/execution/FulfillmentExceptionReviewRepository.java
    - application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java
    - application/service/execution/FulfillmentExceptionReviewQueryService.java
    - api/controller/execution/FulfillmentExceptionReviewQueryController.java
    - infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java
    - src/test/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java
  default_safe_output_root:
    - $HOME/.tmp/orderflow-phase-a-slice02
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/orderflow-phase-a-slice02}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/OrderFlow"
      SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/OrderFlow"

      mkdir -p \
        "$SRC_MAIN/api/dto/execution/request" \
        "$SRC_MAIN/api/dto/execution/response" \
        "$SRC_MAIN/application/validator/execution" \
        "$SRC_MAIN/domain/model/execution" \
        "$SRC_MAIN/domain/port/execution" \
        "$SRC_MAIN/application/mapper/execution" \
        "$SRC_MAIN/application/service/execution" \
        "$SRC_MAIN/api/controller/execution" \
        "$SRC_MAIN/infrastructure/repository/execution" \
        "$SRC_TEST/application/service/execution"

      cat > "$SRC_MAIN/api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.request;

      public class FulfillmentExceptionReviewQueryRequest {
      }
      EOF

      cat > "$SRC_MAIN/api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java" <<'EOF'
      package com.lsam.OrderFlow.api.dto.execution.response;

      public class FulfillmentExceptionReviewQueryResponse {
      }
      EOF

      cat > "$SRC_MAIN/application/validator/execution/FulfillmentExceptionReviewQueryValidator.java" <<'EOF'
      package com.lsam.OrderFlow.application.validator.execution;

      public class FulfillmentExceptionReviewQueryValidator {
      }
      EOF

      cat > "$SRC_MAIN/domain/model/execution/FulfillmentExceptionReviewItem.java" <<'EOF'
      package com.lsam.OrderFlow.domain.model.execution;

      public class FulfillmentExceptionReviewItem {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/FulfillmentExceptionReviewRepository.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface FulfillmentExceptionReviewRepository {
      }
      EOF

      cat > "$SRC_MAIN/application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java" <<'EOF'
      package com.lsam.OrderFlow.application.mapper.execution;

      public class FulfillmentExceptionReviewQueryMapper {
      }
      EOF

      cat > "$SRC_MAIN/application/service/execution/FulfillmentExceptionReviewQueryService.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class FulfillmentExceptionReviewQueryService {
      }
      EOF

      cat > "$SRC_MAIN/api/controller/execution/FulfillmentExceptionReviewQueryController.java" <<'EOF'
      package com.lsam.OrderFlow.api.controller.execution;

      public class FulfillmentExceptionReviewQueryController {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.repository.execution;

      public class JdbcFulfillmentExceptionReviewRepository {
      }
      EOF

      cat > "$SRC_TEST/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java" <<'EOF'
      package com.lsam.OrderFlow.application.service.execution;

      public class FulfillmentExceptionReviewQueryServiceTest {
      }
      EOF

slice_03_snapshot_and_audit_bridge:
  goal:
    - expose optional cockpit snapshot persistence and explicit audit seams
  target_files:
    - domain/model/execution/OrderCockpitSnapshot.java
    - domain/port/execution/OrderCockpitSnapshotRepository.java
    - domain/port/execution/OrderFlowAuditPort.java
    - infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java
    - infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java
  default_safe_output_root:
    - $HOME/.tmp/orderflow-phase-a-slice03
  exact_termux_command_pack:
      TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/orderflow-phase-a-slice03}"
      SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/OrderFlow"

      mkdir -p \
        "$SRC_MAIN/domain/model/execution" \
        "$SRC_MAIN/domain/port/execution" \
        "$SRC_MAIN/infrastructure/repository/execution" \
        "$SRC_MAIN/infrastructure/audit/execution"

      cat > "$SRC_MAIN/domain/model/execution/OrderCockpitSnapshot.java" <<'EOF'
      package com.lsam.OrderFlow.domain.model.execution;

      public class OrderCockpitSnapshot {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/OrderCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface OrderCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/domain/port/execution/OrderFlowAuditPort.java" <<'EOF'
      package com.lsam.OrderFlow.domain.port.execution;

      public interface OrderFlowAuditPort {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.repository.execution;

      public class JdbcOrderCockpitSnapshotRepository {
      }
      EOF

      cat > "$SRC_MAIN/infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java" <<'EOF'
      package com.lsam.OrderFlow.infrastructure.audit.execution;

      public class DatabaseOrderFlowAuditAdapter {
      }
      EOF
