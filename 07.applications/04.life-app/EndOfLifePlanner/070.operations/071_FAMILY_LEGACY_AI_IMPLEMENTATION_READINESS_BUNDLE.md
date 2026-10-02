# EndOfLifePlanner FamilyLegacyAI R7 Implementation Readiness Bundle

FINAL_STATUS=IMPLEMENTATION_READINESS_BUNDLE_NOT_IMPLEMENTED
PATCH=NO
DB_CONNECTION=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Purpose

This bundle consolidates the current FamilyLegacyAI design state before implementation.

R7 does not implement code, DB, API, UI, encryption, notification, Drive, or AIWorkerOS runtime changes.

R7 defines what is ready, what remains blocked, and what must be explicitly approved before implementation.

---

## 2. Current Canonical Artifacts

R0 Canonical Design:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/020.architecture/021_FAMILY_LEGACY_AI_R0_CANONICAL_DESIGN.md
- line_count: 510
- sha256: 664f3a2e26297835f4d74e9f8cbff9ecce3a5efc4c60f9937fffaf21cb0a4295

R1 Readonly Inventory:

- classification: operational evidence only
- tracked canonical artifact: no
- timestamped readonly inventory outputs are intentionally excluded from the canonical design set

R2 Data Model Draft:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/030.model/031_FAMILY_LEGACY_AI_DATA_MODEL_DRAFT.md
- line_count: 721
- sha256: 27abe8f5a0efd8c69e855315daccea386049775ee0ab419500ba33b3103b7cf2

R3 DB AI Review:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/030.model/032_FAMILY_LEGACY_AI_DB_AI_REVIEW.md
- line_count: 310
- sha256: b521426c359514e9252a2db877b30731006208d2a76a59cbee410b5afbb12318

R4B UI Wire and User Flow:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/050.flow/051_FAMILY_LEGACY_AI_UI_WIRE_AND_USER_FLOW.md
- line_count: 712
- sha256: 8f67926c91d877f2823e79c77c26e3bca041e1c738c06c88365763ed3e2635ed

R4C Questionnaire and UI Copy:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/050.flow/052_FAMILY_LEGACY_AI_QUESTIONNAIRE_AND_UI_COPY.md
- line_count: 503
- sha256: 868559102afca4c23225666c3a1c8939ec8b41944e285781a45b64178784e263

R5 AIWorkerOS Runtime Contract:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/040.runtime/041_FAMILY_LEGACY_AI_AIWORKER_RUNTIME_CONTRACT.md
- line_count: 562
- sha256: b044680c31684d3c4955483ec99b61a092d9196b07638f66b801618ad1028420

R6 CX / AIWorkerOS Integration Boundary:

- path: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/EndOfLifePlanner/060.integration/061_FAMILY_LEGACY_AI_CX_AIWORKER_INTEGRATION.md
- line_count: 514
- sha256: 4a40007a46470910710e311bfd5621a12dd4066f4e6f0690ff2a3bf8d94638d8

---

## 3. Canonical Decisions

FamilyLegacyAI canon belongs to LifeOS / EndOfLifePlanner.

AIWorkerOS is runtime executor, not canon owner.

CX22073JW is background knowledge/reference foundation.

PersonaOS is not mandatory for FamilyLegacyAI.

The persistent disclosure is shown outside the message bubble.

The generated message body should not repeat "本人ではない" every time.

Minor use requires guardian/adult consent.

Serious or urgent consultation may trigger silent emergency contact handling.

The user must not be shown "通知しました".

Private context vault may contain relatives, family, friends, favorite celebrities, works, hobbies, places, brands, foods, and preference notes.

Private context vault plaintext must not be stored server-side.

Encrypted DB or object storage backup is allowed only when client-side encrypted and server cannot access the decryption key.

Drive backup may store encrypted file only.

CX knowledge must not be presented as registrant memory.

Public figures may be used only as preference/reference cues, not impersonated.

---

## 4. Product Scope

Feature:

- EndOfLifePlanner FamilyLegacyAI

User-facing label:

- 家族相談AI

Core screens:

- FamilyLegacyAI home
- AI creation wizard
- 本人らしさ登録
- 知識領域登録
- 本人文脈vault
- 家族/利用者設定
- 未成年同意設定
- 緊急連絡先
- 死後モード
- バックアップ/復元
- 相談プレビュー
- 家族用相談画面
- 管理者/後見人確認

---

## 5. Implementation Readiness Status

Ready as design:

- canonical ownership
- UI structure
- questionnaire draft
- runtime contract
- data model draft
- DB AI review
- CX boundary
- private vault boundary
- minor consent policy
- silent emergency notification policy
- backup/restore policy

Not ready for implementation without additional explicit GO:

- DB DDL
- RLS
- UI implementation
- AIWorkerOS endpoint implementation
- AIWorkerOS queue wiring
- CX retrieval wiring
- notification adapter
- LINE integration
- Drive integration
- encryption implementation
- posthumous verification implementation
- git commit
- git push

---

## 6. Recommended Implementation Order

Phase I0: implementation target inventory

- confirm implementation root for EndOfLifePlanner under 03.civilization-development
- confirm whether app exists or must be scaffolded
- confirm framework/runtime
- confirm existing LifeOS shared components
- confirm CommonOS UI component availability
- no patch
- no DB connection

Phase I1: UI skeleton design implementation

- FamilyLegacyAI menu
- home screen
- setup wizard shell
- persistent disclosure area
- no runtime AI call
- no DB write
- local mock state only if implementation policy permits

Phase I2: questionnaire UI

- 3-minute course
- 10-minute course
- deep course placeholders
- preview screen shell
- UI-centered tests

Phase I3: vault UI shell

- context entity categories
- encryption/key warning
- backup/restore UI shell
- no real encryption yet unless explicitly approved

Phase I4: access and minor consent UI

- guardian consent screen
- minor blocked state
- admin/guardian review shell

Phase I5: emergency contact UI

- contact setup
- silent notification explanation
- no real LINE sending
- no real dispatch

Phase I6: runtime contract adapter stub

- LifeOS request builder
- AIWorkerOS contract shape
- no real API POST unless explicitly approved

Phase I7: DB design inventory and DDL review

- readonly schema inventory
- additive SQL draft
- RLS draft
- no apply until explicit GO

---

## 7. Hard Implementation Guards

No implementation may:

- store plaintext private context vault server-side
- store decryption keys in DB
- send decryption keys to AIWorkerOS
- send full private vault to AIWorkerOS
- register private vault data into CX22073JW
- present CX knowledge as personal memory
- show "通知しました" to the user
- let minors use chat without guardian consent
- impersonate public figures
- imply public figure endorsement
- automate final medical/legal/inheritance/contract decisions
- make PersonaOS mandatory for FamilyLegacyAI

---

## 8. UI-Centered Test Requirements

Future UI tests must verify:

- FamilyLegacyAI menu appears under EndOfLifePlanner.
- Persistent disclosure is outside the message bubble.
- persistent disclosure is outside the message bubble.
- Chat reply body does not repeat the disclaimer every time.
- Minor user cannot enter chat without guardian consent.
- Emergency contact screen states that user is not shown "通知しました".
- Chat screen never displays "通知しました".
- Vault screen states that plaintext third-party data is not stored server-side.
- Vault screen states that decryption key is not stored in DB.
- Backup screen offers DB encrypted backup and Drive encrypted file.
- Restore screen requires guardian approval for minors.
- Knowledge domain screen says CX is background reference only.
- Public figure preference copy prohibits impersonation and endorsement.
- Preview mode does not send real emergency notification.

---

## 9. DB Implementation Gate

Before DB DDL, the following must happen:

- explicit user GO
- readonly DB/schema inventory
- schema ownership confirmation
- existing user/profile table confirmation
- UUID generation confirmation
- storage strategy confirmation
- encrypted blob vs object storage decision
- RLS design
- rollback/no-op strategy
- no DROP
- no TRUNCATE
- no CASCADE
- no destructive migration

Current DB status:

- NOT_READY_FOR_DB_APPLY

---

## 10. AIWorkerOS Implementation Gate

Before AIWorkerOS implementation, the following must happen:

- exact runtime server file inventory
- existing route/queue pattern dump
- no blind route wiring
- no direct API POST without explicit GO
- contract exact payload freeze
- emergency action handling review
- CX request boundary review
- context minimization proof
- decryption-key exclusion proof

Current AIWorkerOS status:

- NOT_READY_FOR_API_POST
- NOT_READY_FOR_RUNTIME_PATCH

---

## 11. Recommended Next Step

Recommended next:

- I0 implementation target inventory

Reason:

- All major design artifacts are ready.
- Before implementation, the actual development folder and existing app structure must be inspected.
- This prevents creating files in the wrong place or mixing design and implementation artifacts.

I0 should be:

- READONLY
- PATCH=NO
- DB_CONNECTION=NO
- DB_WRITE=NO
- API_POST=NO
- GIT_PUSH=NO

---

## 12. R7 Decision

Decision:

- READY_FOR_I0_IMPLEMENTATION_TARGET_INVENTORY
- NOT_READY_FOR_DB_APPLY
- NOT_READY_FOR_API_POST
- NOT_READY_FOR_RUNTIME_PATCH
- NOT_READY_FOR_GIT_PUSH

R7 closes the design bundle phase and prepares for implementation inventory.
