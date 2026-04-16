# ============================================================
# NAMECARDMANAGER PHASE A SECOND SLICE IMAGE STAGING COMMAND PACK
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-second-slice-image-staging-command-pack

purpose:
Fixes the exact Termux command pack for the second vertical slice of
Phase A stub generation. This slice focuses on image staging under an
existing capture session. This step only registers the command pack
document. It does not execute the Java file generation.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.NameCardManager
- no Japanese literals in Java source
- additive only
- second slice means image staging register path after first slice

second_slice_target_files:
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RegisterCaptureImageRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureImageStagingResponse.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RegisterCaptureImageValidator.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureImageStaging.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/StagedImageStoragePort.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureImageStagingMapper.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingService.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureImageStagingController.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingServiceTest.java

target_root_policy:
- actual implementation repository root is not locked in this document
- default safe output root for later execution is:
  $HOME/.tmp/namecardmanager-phase-a-second-slice

exact_termux_command_pack:
    TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/namecardmanager-phase-a-second-slice}"
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
      "$SRC_MAIN/infrastructure/storage/namecard" \
      "$SRC_TEST/application/service/namecard"

    cat > "$SRC_MAIN/api/dto/namecard/request/RegisterCaptureImageRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class RegisterCaptureImageRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/CaptureImageStagingResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class CaptureImageStagingResponse {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/RegisterCaptureImageValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class RegisterCaptureImageValidator {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/CaptureImageStaging.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class CaptureImageStaging {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/CaptureImageStagingRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface CaptureImageStagingRepository {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/StagedImageStoragePort.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface StagedImageStoragePort {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/CaptureImageStagingMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class CaptureImageStagingMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CaptureImageStagingService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureImageStagingService {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CaptureImageStagingController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CaptureImageStagingController {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcCaptureImageStagingRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.storage.namecard;

    public class ObjectStorageStagedImageStorageAdapter {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CaptureImageStagingServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureImageStagingServiceTest {
    }
    EOF

    echo "DONE: second slice stub files generated under $TARGET_ROOT"

why_this_pack_shape:
- extends the first vertical slice without jumping to timeline or finalize too early
- keeps storage handling behind a port boundary
- keeps binary payload handling outside repository responsibilities
- preserves the contract-first order fixed in earlier documents

expected_follow_up_after_execution:
- fill request and response DTO exact fields from the DTO freeze document
- add validator validate entry
- add repository method signatures
- add service orchestration seam with session existence check
- add controller request to service seam
- add storage port method seam
- add test fixture and first success case

non_scope:
- no execution in this document step
- no finalize generation here
- no relationship query generation here
- no company timeline generation here
- no framework annotation locking here
- no Android client generation here

next_action:
- create third-slice command pack for finalize, relationship query, and company timeline
- then create field-filled second-slice stub content plan
