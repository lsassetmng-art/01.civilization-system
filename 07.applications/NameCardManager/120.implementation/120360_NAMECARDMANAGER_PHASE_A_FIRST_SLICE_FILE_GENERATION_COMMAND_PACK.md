# ============================================================
# NAMECARDMANAGER PHASE A FIRST SLICE FILE GENERATION COMMAND PACK
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-first-slice-file-generation-command-pack

purpose:
Fixes the exact Termux command pack for the first vertical slice of
Phase A stub generation. This step only registers the command pack
document. It does not execute the Java file generation.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.NameCardManager
- no Japanese literals in Java source
- additive only
- first slice means capture session create path first

first_slice_target_files:
- src/main/java/com/lsam/NameCardManager/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CreateCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CreateCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureSession.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionService.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureSessionController.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java
- src/main/java/com/lsam/NameCardManager/config/namecard/NamecardPhaseAConfig.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionServiceTest.java

target_root_policy:
- actual implementation repository root is not locked in this document
- default safe output root for later execution is:
  $HOME/.tmp/namecardmanager-phase-a-first-slice

exact_termux_command_pack:
    TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/namecardmanager-phase-a-first-slice}"
    SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/NameCardManager"
    SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/NameCardManager"

    mkdir -p \
      "$SRC_MAIN/api/dto/common" \
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
      "$SRC_MAIN/config/namecard" \
      "$SRC_TEST/application/service/namecard"

    cat > "$SRC_MAIN/api/dto/common/ErrorResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.common;

    public class ErrorResponse {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/request/CreateCaptureSessionRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class CreateCaptureSessionRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/CaptureSessionResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class CaptureSessionResponse {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/CreateCaptureSessionValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class CreateCaptureSessionValidator {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/CaptureSession.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class CaptureSession {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/CaptureSessionRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface CaptureSessionRepository {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/CaptureSessionMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class CaptureSessionMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CaptureSessionService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureSessionService {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CaptureSessionController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CaptureSessionController {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcCaptureSessionRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcCaptureSessionRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.audit.namecard;

    public class DatabaseNamecardAuditAdapter {
    }
    EOF

    cat > "$SRC_MAIN/config/namecard/NamecardPhaseAConfig.java" <<'EOF'
    package com.lsam.NameCardManager.config.namecard;

    public class NamecardPhaseAConfig {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CaptureSessionServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureSessionServiceTest {
    }
    EOF

    echo "DONE: first slice stub files generated under $TARGET_ROOT"

why_this_pack_shape:
- starts from the capture session vertical slice
- keeps the first runtime seam narrow
- avoids image staging and timeline query expansion too early
- preserves the contract-first order fixed in earlier documents

expected_follow_up_after_execution:
- fill DTO exact fields from the DTO freeze document
- add validator validate entry
- add repository method signatures
- add service orchestration seam
- add controller request to service seam
- add test fixture and first success case

non_scope:
- no execution in this document step
- no second-slice image staging generation here
- no framework annotation locking here
- no ERP publication generation here
- no Android client generation here

next_action:
- create second-slice file generation command pack
- then create field-filled version plan for the first-slice stubs
