# ============================================================
# STATIC ART OS PHASE 2 EXIT CRITERIA AND CHECKLIST
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

phase_2_complete_definition:
  - asset create works end-to-end
  - asset detail read works end-to-end
  - localization write works end-to-end
  - rights policy write works end-to-end
  - sales offer write works end-to-end
  - subscription rule write works end-to-end
  - validators are bound before service execution
  - guards are bound before repository access
  - response envelope is canonical
  - error envelope is canonical
  - PERSONA side DB access is used where DB binding exists

checklist:
  - POST /assets success path verified
  - GET /assets/{asset_id} success path verified
  - PUT localization success and conflict paths verified
  - PUT rights success and invalid-region paths verified
  - PUT sales success and invalid-price paths verified
  - PUT subscription success and invalid-state paths verified
  - review_pending write-block path verified
  - creator/publisher permission boundaries verified
  - 400/403/404/409/422 mapping verified
  - no route handler embeds SQL directly

blockers_if_failed:
  - missing repository implementation
  - inconsistent error envelope
  - version_token path not enforced
  - permission bypass
  - wrong DB target
