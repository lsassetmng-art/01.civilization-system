# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT IMPLEMENTATION RESTART GUIDE
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: handoff

restart_purpose:
  - 実装を始める時に、どこから読めばよいかを固定する
  - 設計完了後の最短再開順を明示する

recommended_restart_order:
  1:
    - 900.meta/010.audit/9000100013_LEGAL_SUPPORT_MASTER_CANONICAL_SINGLE_FILE.md
  2:
    - 900.meta/010.audit/9000100014_LEGAL_SUPPORT_FINAL_REVIEW_CHECKLIST_PACK.md
  3:
    - 040.runtime/010.use-cases/0400100022_LEGAL_SUPPORT_ACTION_NAME_FINAL_LOCK.md
  4:
    - 040.runtime/010.use-cases/0400100023_LEGAL_SUPPORT_STANDARD_RESPONSE_ENVELOPE_FINAL_LOCK.md
  5:
    - 030.model/010.entities/0300100003_LEGAL_SUPPORT_ENTITY_FIELD_MATRIX.md
  6:
    - 030.model/010.entities/0300100014_LEGAL_SUPPORT_APP_WIDE_ENUM_REGISTRY.md
  7:
    - 080.policy/010.boundaries/0800100006_LEGAL_SUPPORT_FIELD_LEVEL_MASKING_MATRIX.md
  8:
    - 100.security/010.access-control/1000100005_LEGAL_SUPPORT_OWNER_FAMILY_ACTION_CAPABILITY_MATRIX.md
  9:
    - 060.integration/010.lifeos-linkage/0600100004_LEGAL_SUPPORT_CROSS_APP_HANDOFF_PAYLOAD_EXACT.md
  10:
    - 040.runtime/010.use-cases/0400100025_LEGAL_SUPPORT_CROSS_APP_HANDOFF_RESPONSE_FINAL_LOCK.md

restart_modes:
  mode_a_final_review_first:
    - 実装前に checklist を使って最終整合確認する
  mode_b_start_ddl_design:
    - entity / enum / nullable / response envelope を基準にDDLへ進む
  mode_c_start_api_contract:
    - action / request / response final lock を基準に API contract へ進む
