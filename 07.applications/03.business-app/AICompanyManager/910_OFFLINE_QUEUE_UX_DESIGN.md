# ============================================================
# AICompanyManager Offline Queue UX Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase J
status: offline-queue-ux-designed

## 1. Purpose

Phase J defines and implements the offline-first queue UX.

AICompanyManager uses CommonOS for sync presentation style, but the app owns queue business meaning.

## 2. Queue States

- pending
- syncing
- synced
- failed
- conflict
- cancelled

## 3. Queue Actions

| action | meaning |
|---|---|
| add | create local queue item |
| syncPending | mark pending items as synced |
| failPending | simulate retryable failure |
| retryFailed | move failed items back to synced after retry |
| createConflict | simulate business conflict |
| resolveConflict | mark conflict as resolved/synced |
| cancelItem | cancel queue item |

## 4. Retry Presentation

Retryable examples:

- network_unavailable
- server_timeout
- aiworker_unavailable
- stale_snapshot
- unknown_error

## 5. Conflict Presentation

Conflict examples:

- policy_updated_after_submit
- approval_after_revision
- delivery_after_revision
- stale_pipeline_snapshot
- duplicate_return_request
- delivery_locked

## 6. CommonOS Mapping

AICompanyManager maps app queue states to CommonOS sync presentation.

| app queue status | CommonOS presentation |
|---|---|
| pending | waiting |
| syncing | syncing |
| synced | complete |
| failed | retryable_error |
| conflict | needs_human_resolution |
| cancelled | muted |

## 7. Canonical Rule

CommonOS owns presentation.
AICompanyManager owns queue meaning and action behavior.
