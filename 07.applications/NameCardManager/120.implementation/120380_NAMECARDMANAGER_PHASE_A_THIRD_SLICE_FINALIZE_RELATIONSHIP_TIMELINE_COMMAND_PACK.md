# ============================================================
# NAMECARDMANAGER PHASE A THIRD SLICE FINALIZE RELATIONSHIP TIMELINE COMMAND PACK
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-third-slice-command-pack

purpose:
Fixes the exact Termux command pack for the third vertical slice of
Phase A stub generation. This slice covers finalize, relationship query,
and company timeline query so the remaining functional surface can be
prepared without reopening earlier planning decisions.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.NameCardManager
- no Japanese literals in Java source
- additive only
- third slice depends on first and second slice boundaries already fixed

third_slice_target_files:
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/FinalizeCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RelationshipQueryRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CompanyTimelineQueryRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/FinalizeCaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/RelationshipQueryResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CompanyTimelineQueryResponse.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/FinalizeCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RelationshipQueryValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CompanyTimelineQueryValidator.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CompanyTimelineEvent.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/NamecardRelationshipView.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/RelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/NamecardAuditPort.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/FinalizeCaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/RelationshipQueryMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CompanyTimelineQueryMapper.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryService.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureFinalizeController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/RelationshipQueryController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CompanyTimelineQueryController.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryServiceTest.java

target_root_policy:
- actual implementation repository root is not locked in this document
- default safe output root for later execution is:
  $HOME/.tmp/namecardmanager-phase-a-third-slice

exact_termux_command_pack:
    TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/namecardmanager-phase-a-third-slice}"
    SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/NameCardManager"
    SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/NameCardManager"

    mkdir -p \
      "$SRC_MAIN/api/dto/namecard/request" \
      "$SRC_MAIN/api/dto/namecard/response" \
      "$SRC_MAIN/application/validator/namecard" \
      "$SRC_MAIN/domain/model/namecard" \
      "$SRC_MAIN/domain/port/namecard" \
      "$SRC_MAIN/application/mapper/namecard" \
      "$SRC_MAIN/application/service/namecard" \
      "$SRC_MAIN/api/controller/namecard" \
      "$SRC_MAIN/infrastructure/repository/namecard" \
      "$SRC_MAIN/infrastructure/audit/namecard" \
      "$SRC_TEST/application/service/namecard"

    cat > "$SRC_MAIN/api/dto/namecard/request/FinalizeCaptureSessionRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class FinalizeCaptureSessionRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/request/RelationshipQueryRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class RelationshipQueryRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/request/CompanyTimelineQueryRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class CompanyTimelineQueryRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/FinalizeCaptureSessionResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class FinalizeCaptureSessionResponse {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/RelationshipQueryResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class RelationshipQueryResponse {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/CompanyTimelineQueryResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class CompanyTimelineQueryResponse {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/FinalizeCaptureSessionValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class FinalizeCaptureSessionValidator {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/RelationshipQueryValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class RelationshipQueryValidator {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/CompanyTimelineQueryValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class CompanyTimelineQueryValidator {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/CompanyTimelineEvent.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class CompanyTimelineEvent {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/NamecardRelationshipView.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class NamecardRelationshipView {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/CompanyTimelineEventRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface CompanyTimelineEventRepository {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/RelationshipQueryRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface RelationshipQueryRepository {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/NamecardAuditPort.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface NamecardAuditPort {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/FinalizeCaptureSessionMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class FinalizeCaptureSessionMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/RelationshipQueryMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class RelationshipQueryMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/CompanyTimelineQueryMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class CompanyTimelineQueryMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CaptureFinalizeService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureFinalizeService {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/RelationshipQueryService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class RelationshipQueryService {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CompanyTimelineQueryService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CompanyTimelineQueryService {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CaptureFinalizeController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CaptureFinalizeController {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/RelationshipQueryController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class RelationshipQueryController {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CompanyTimelineQueryController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CompanyTimelineQueryController {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcCompanyTimelineEventRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcRelationshipQueryRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.audit.namecard;

    public class DatabaseNamecardAuditAdapter {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CaptureFinalizeServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureFinalizeServiceTest {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/RelationshipQueryServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class RelationshipQueryServiceTest {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CompanyTimelineQueryServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CompanyTimelineQueryServiceTest {
    }
    EOF

    echo "DONE: third slice stub files generated under $TARGET_ROOT"

why_this_pack_shape:
- closes the remaining major Phase A service surfaces in one slice
- keeps finalize, relationship query, and company timeline aligned
- preserves the earlier contract-first order
- leaves runtime details out of this document stage

expected_follow_up_after_execution:
- fill DTO exact fields from the DTO freeze and existing payload documents
- add validator validate entry
- add repository method signatures
- add service orchestration seam with audit port calls
- add controller request to service seam
- add tests for success, conflict, and filter behaviors

non_scope:
- no execution in this document step
- no framework annotation locking here
- no Android client generation here
- no ERP publication generation here

next_action:
- create field-filled content plans for first, second, and third slices
- then close Phase A readiness with a bundled audit memo
