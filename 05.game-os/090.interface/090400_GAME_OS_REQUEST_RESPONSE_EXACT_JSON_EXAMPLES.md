# ============================================================
# GAME OS REQUEST RESPONSE EXACT JSON EXAMPLES
# ============================================================

status: draft-fixed
system: Civilization System
os: GameOS
layer: request response exact json examples
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

---

## 0. Scope

This document fixes the first canonical request/response exact JSON example set for GameOS.

Covered endpoints:
- POST /game/builder/projects
- POST /game/builder/revisions/save
- POST /game/builder/autosaves
- POST /game/builder/preview-sessions
- POST /game/builder/validation-runs
- POST /game/builder/export-packages
- POST /game/builder/submission-requests
- POST /game/runtime/sessions
- POST /game/runtime/save-slots
- POST /game/runtime/persona-growth-outbox
- POST /game/runtime/gambling-control/release-check

---

## 1. Shared API payload rules

### 1.1 Common write contract
All write-side requests should preserve:
- payloadVersion
- commandId where explicit write command semantics apply
- idempotencyKey where duplicate replay risk exists
- correlationId where async linkage matters
- actor basis in auth/session context, not duplicated unnecessarily in body unless business-required

### 1.2 Common success response contract
Success responses should preserve:
- canonical identity refs or codes
- current state or status
- basis refs where follow-up actions depend on them
- readiness/eligibility fields where relevant

### 1.3 Common failure response shape
Typical failure response shape:

{
  "errorCode": "string_code",
  "errorMessage": "human readable summary",
  "errorState": "failed|denied|blocked|held|conflict",
  "details": {
    "field": "optional detail"
  },
  "retryAllowed": false
}

---

## 2. POST /game/builder/projects

purpose:
- create a Builder project from workspace, runtime profile, and optional template basis

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_project_create_001",
  "idempotencyKey": "idem_game_project_create_001",
  "workspaceCode": "gws_001",
  "projectCode": "gpr_001",
  "projectName": "Moon Route",
  "runtimeFamilyCode": "vn",
  "runtimeProfileCode": "vn_standard",
  "templateFamilyCode": "starter",
  "templateProfileCode": "dating_story_starter",
  "defaultLanguageCode": "en"
}

success_response:
{
  "projectCode": "gpr_001",
  "workspaceCode": "gws_001",
  "projectName": "Moon Route",
  "runtimeFamilyCode": "vn",
  "runtimeProfileCode": "vn_standard",
  "templateProfileCode": "dating_story_starter",
  "latestRevisionRef": "grev_001",
  "latestAutosaveSnapshotRef": null,
  "saveState": "draft",
  "inlineValidationState": "not_run",
  "exportReadinessState": "not_ready",
  "publishReadinessState": "not_ready",
  "collaborationLockState": "unlocked"
}

failure_response:
{
  "errorCode": "GAME_PROJECT_CREATE_BASIS_INVALID",
  "errorMessage": "Runtime profile is not compatible with template profile.",
  "errorState": "failed",
  "details": {
    "runtimeProfileCode": "vn_standard",
    "templateProfileCode": "dating_story_starter"
  },
  "retryAllowed": false
}

---

## 3. POST /game/builder/revisions/save

purpose:
- persist immutable revision truth from editor changes

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_revision_save_001",
  "idempotencyKey": "idem_game_revision_save_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_001",
  "changeSet": {
    "sceneDiffs": [
      {
        "sceneRef": "scene_010",
        "operation": "upsert",
        "title": "Blue Moon Rooftop",
        "dialogueCount": 24
      }
    ],
    "routeDiffs": [
      {
        "routeRef": "route_a",
        "operation": "upsert",
        "affectionGate": 10
      }
    ],
    "mapDiffs": [],
    "assetRefs": [
      "asset_bg_rooftop_night",
      "asset_bgm_soft_001"
    ]
  }
}

success_response:
{
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_001",
  "newRevisionRef": "grev_002",
  "revisionNo": 2,
  "saveState": "saved",
  "conflictState": "none",
  "latestRevisionRef": "grev_002",
  "inlineValidationState": "not_run"
}

failure_response:
{
  "errorCode": "GAME_REVISION_SAVE_CONFLICT",
  "errorMessage": "The basis revision is no longer current for this editable session.",
  "errorState": "conflict",
  "details": {
    "basisRevisionRef": "grev_001",
    "currentLatestRevisionRef": "grev_003"
  },
  "retryAllowed": true
}

---

## 4. POST /game/builder/autosaves

purpose:
- persist autosave snapshot for current editing basis

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_autosave_001",
  "idempotencyKey": "idem_game_autosave_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "autosavePayload": {
    "sceneDraftRefs": [
      "scene_010"
    ],
    "unsavedChangeCount": 3,
    "clientEditorSessionRef": "gedit_001"
  }
}

success_response:
{
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "autosaveSnapshotRef": "gauto_001",
  "unsavedChangeCount": 3,
  "saveState": "saved",
  "conflictState": "none"
}

failure_response:
{
  "errorCode": "GAME_AUTOSAVE_WRITE_FAILED",
  "errorMessage": "Autosave snapshot could not be persisted.",
  "errorState": "failed",
  "details": {
    "projectCode": "gpr_001"
  },
  "retryAllowed": true
}

---

## 5. POST /game/builder/preview-sessions

purpose:
- create preview session from selected revision

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_preview_create_001",
  "idempotencyKey": "idem_game_preview_create_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "runtimeFamilyCode": "vn",
  "deviceClass": "mobile",
  "languageCode": "ja"
}

success_response:
{
  "previewSessionRef": "gps_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "runtimeFamilyCode": "vn",
  "deviceClass": "mobile",
  "languageCode": "ja",
  "previewReadinessState": "ready",
  "blockingFindingsCount": 0,
  "warningFindingsCount": 1
}

failure_response:
{
  "errorCode": "GAME_PREVIEW_BLOCKING_FINDINGS",
  "errorMessage": "Preview session is blocked by unresolved blocking findings.",
  "errorState": "blocked",
  "details": {
    "basisRevisionRef": "grev_002",
    "blockingFindingsCount": 2
  },
  "retryAllowed": true
}

---

## 6. POST /game/builder/validation-runs

purpose:
- execute validation against a selected revision

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_validation_run_001",
  "idempotencyKey": "idem_game_validation_run_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "validationProfileCode": "pre_publish_default"
}

success_response:
{
  "validationRunRef": "gvr_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "validationProfileCode": "pre_publish_default",
  "validationState": "running",
  "blockingFindingsCount": 0,
  "warningFindingsCount": 0
}

failure_response:
{
  "errorCode": "GAME_VALIDATION_PROFILE_NOT_ALLOWED",
  "errorMessage": "The selected validation profile is not allowed for this runtime family.",
  "errorState": "denied",
  "details": {
    "runtimeFamilyCode": "vn",
    "validationProfileCode": "rpg_only_profile"
  },
  "retryAllowed": false
}

---

## 7. POST /game/builder/export-packages

purpose:
- build export package and manifest from validated revision

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_export_build_001",
  "idempotencyKey": "idem_game_export_build_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "validationRunRef": "gvr_001",
  "targetPlatformSet": [
    "ios",
    "android",
    "pc",
    "tablet"
  ],
  "targetStoreSet": [
    "game_store",
    "civilization_marketplace"
  ]
}

success_response:
{
  "exportPackageRef": "gexp_001",
  "projectCode": "gpr_001",
  "basisRevisionRef": "grev_002",
  "validationRunRef": "gvr_001",
  "manifestRef": "gman_001",
  "exportState": "built",
  "submissionEligible": true
}

failure_response:
{
  "errorCode": "GAME_EXPORT_NOT_ELIGIBLE",
  "errorMessage": "Export build is blocked because the selected revision is not export eligible.",
  "errorState": "blocked",
  "details": {
    "projectCode": "gpr_001",
    "exportReadinessState": "blocked"
  },
  "retryAllowed": true
}

---

## 8. POST /game/builder/submission-requests

purpose:
- create governance request for validation acceptance or publish activation

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_submission_create_001",
  "idempotencyKey": "idem_game_submission_create_001",
  "projectCode": "gpr_001",
  "exportPackageRef": "gexp_001",
  "manifestRef": "gman_001",
  "submissionType": "publish_activation",
  "storeChannelCode": "civilization_marketplace"
}

success_response:
{
  "submissionRequestRef": "gsub_001",
  "projectCode": "gpr_001",
  "exportPackageRef": "gexp_001",
  "manifestRef": "gman_001",
  "submissionType": "publish_activation",
  "submissionStatus": "submitted",
  "validationAcceptanceStatus": "pending",
  "publishActivationStatus": "not_started",
  "policyReviewRequired": false
}

failure_response:
{
  "errorCode": "GAME_SUBMISSION_MANIFEST_MISSING",
  "errorMessage": "Submission cannot be created because manifest is missing.",
  "errorState": "failed",
  "details": {
    "exportPackageRef": "gexp_001"
  },
  "retryAllowed": false
}

---

## 9. POST /game/runtime/sessions

purpose:
- launch runtime session from activated release

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_runtime_launch_001",
  "idempotencyKey": "idem_game_runtime_launch_001",
  "releaseRef": "grel_001",
  "packageRef": "gpack_001",
  "playerId": "usr_100",
  "deviceClass": "mobile",
  "languageCode": "ja"
}

success_response:
{
  "runtimeSessionRef": "grun_001",
  "releaseRef": "grel_001",
  "packageRef": "gpack_001",
  "playerId": "usr_100",
  "runtimeFamilyCode": "vn",
  "runtimeState": "active",
  "saveCapability": true,
  "currentSceneRef": "scene_001",
  "currentMapRef": null,
  "routeStateRef": "route_a"
}

failure_response:
{
  "errorCode": "GAME_RUNTIME_LAUNCH_DENIED",
  "errorMessage": "Runtime launch is denied because entitlement is not aligned.",
  "errorState": "denied",
  "details": {
    "releaseRef": "grel_001",
    "playerId": "usr_100"
  },
  "retryAllowed": false
}

---

## 10. POST /game/runtime/save-slots

purpose:
- persist runtime progress for continuation and recovery

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_save_slot_write_001",
  "idempotencyKey": "idem_game_save_slot_write_001",
  "runtimeSessionRef": "grun_001",
  "saveSlotRef": "slot_001",
  "slotNo": 1,
  "currentSceneRef": "scene_020",
  "currentMapRef": null,
  "routeStateRef": "route_a",
  "savePayload": {
    "affectionState": {
      "char_anna": 12
    },
    "flagState": {
      "blue_moon_seen": true
    }
  },
  "personaSignalCandidateSet": [
    {
      "signalCode": "affection_gain",
      "magnitude": 3,
      "basisRef": "scene_020"
    }
  ]
}

success_response:
{
  "saveSlotRef": "slot_001",
  "runtimeSessionRef": "grun_001",
  "slotNo": 1,
  "saveState": "saved",
  "lastSavedAt": "2026-04-17T10:00:00Z",
  "personaOutboxQueued": true
}

failure_response:
{
  "errorCode": "GAME_SAVE_SLOT_SERIALIZATION_FAILED",
  "errorMessage": "Save payload could not be serialized.",
  "errorState": "failed",
  "details": {
    "runtimeSessionRef": "grun_001",
    "saveSlotRef": "slot_001"
  },
  "retryAllowed": true
}

---

## 11. POST /game/runtime/persona-growth-outbox

purpose:
- queue GameOS-originated growth/context candidate signals for PersonaOS delivery

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_persona_outbox_001",
  "idempotencyKey": "idem_game_persona_outbox_001",
  "correlationId": "corr_game_persona_001",
  "runtimeSessionRef": "grun_001",
  "playerId": "usr_100",
  "signalSet": [
    {
      "signalCode": "route_completed",
      "magnitude": 1,
      "basisRef": "ending_blue_moon"
    }
  ]
}

success_response:
{
  "outboxRef": "gout_001",
  "runtimeSessionRef": "grun_001",
  "playerId": "usr_100",
  "deliveryState": "queued",
  "deliveryAttemptCount": 0,
  "personaOverwriteAllowed": false
}

failure_response:
{
  "errorCode": "GAME_PERSONA_OUTBOX_DUPLICATE",
  "errorMessage": "An equivalent outbox event has already been queued.",
  "errorState": "conflict",
  "details": {
    "idempotencyKey": "idem_game_persona_outbox_001"
  },
  "retryAllowed": false
}

---

## 12. POST /game/runtime/gambling-control/release-check

purpose:
- enforce policy gate before gambling-family release activation

request:
{
  "payloadVersion": 1,
  "commandId": "cmd_game_gambling_release_check_001",
  "idempotencyKey": "idem_game_gambling_release_check_001",
  "releaseRef": "grel_999",
  "runtimeFamilyCode": "gambling",
  "operatorReviewRef": "oprev_001",
  "policyProfileCode": "regulated_gambling_profile"
}

success_response:
{
  "releaseRef": "grel_999",
  "runtimeFamilyCode": "gambling",
  "policyReviewRequired": true,
  "policyDecision": "hold",
  "activationAllowed": false,
  "policyReviewRef": "gpol_001"
}

failure_response:
{
  "errorCode": "GAME_GAMBLING_POLICY_PROFILE_MISSING",
  "errorMessage": "Policy review cannot start because the required policy profile is missing.",
  "errorState": "failed",
  "details": {
    "runtimeFamilyCode": "gambling",
    "policyProfileCode": "regulated_gambling_profile"
  },
  "retryAllowed": false
}

---

## 13. Next exactness package

The next package after this request/response exact JSON example set should be:
- implementation phase by module
- acceptance test case set
- integrated GameOS implementation start pack
