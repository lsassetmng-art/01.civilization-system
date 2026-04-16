# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH HANDOFF INVENTORY AND PACKAGE GUIDE
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 920.meta
owner: Boss
prepared_by: Zero

purpose:
  - TrainingCoach の handoff 時に何を渡せばよいか整理する
  - 読み手別に必要なファイル群をまとめる
  - 設計だけ引き継ぐ場合にも迷わないようにする

handoff_packages:

package_1_product_concept:
  audience:
    - product reviewer
    - business reviewer
  key_files:
    - 00_TRAINING_COACH_FINAL_INTEGRATED_CANONICAL_SUMMARY.md
    - 00_TRAINING_COACH_INTEGRATED.md
    - 0700100003_TRAINING_COACH_RELEASE_SLICE_AND_SCOPE_LOCK.md
    - 0900100022_TRAINING_COACH_PREMIUM_ACTUAL_JA_EN_FULL_COPY_DRAFT.md

package_2_data_and_db:
  audience:
    - db reviewer
    - backend designer
  key_files:
    - 0300100005_TRAINING_COACH_SCHEMA_BINDING.md
    - 0300100006_TRAINING_COACH_LIFE_TABLE_MAPPING.md
    - 0300100007_TRAINING_COACH_RELATION_AND_CARDINALITY.md
    - 1200200001_TRAINING_COACH_LIFE_DDL_DRAFT.sql
    - 1200200003_TRAINING_COACH_SHARE_SQL_DRAFT.sql
    - 0300100012_TRAINING_COACH_SEED_MASTER_ACTUAL_ROW_CATALOG.md
    - 1200100017_TRAINING_COACH_SEED_INSERT_TRANSFORMATION_NOTE.md

package_3_payload_and_runtime:
  audience:
    - api designer
    - app runtime designer
  key_files:
    - 0500100002_TRAINING_COACH_SCREEN_FLOW_EXACT_PAYLOAD.md
    - 0600100002_TRAINING_COACH_LIFEOS_EXACT_PAYLOAD.md
    - 0600100006_TRAINING_COACH_API_DB_EXACT_MAPPING.md
    - 0400100002_TRAINING_COACH_STATE_TRANSITION_EXACT_MATRIX.md
    - 0900100003_TRAINING_COACH_EMPTY_ERROR_RESPONSE_CONTRACT.md

package_4_copy_and_help:
  audience:
    - content reviewer
    - localization reviewer
    - support reviewer
  key_files:
    - 0800100005_TRAINING_COACH_LOCALIZATION_AND_MESSAGE_KEY_POLICY.md
    - 0700100009_TRAINING_COACH_HELP_CENTER_TAXONOMY_CANONICAL_LIST.md
    - 0700100010_TRAINING_COACH_HELP_ARTICLE_FULL_INVENTORY.md
    - 0700100013_TRAINING_COACH_HELP_ARTICLE_LEDGER_LINKAGE.md
    - 0900100013_TRAINING_COACH_ONBOARDING_ACTUAL_JA_COPY_DRAFT.md
    - 0900100016_TRAINING_COACH_ONBOARDING_ACTUAL_EN_COPY_DRAFT.md
    - 0900100014_TRAINING_COACH_FAQ_ACTUAL_JA_COPY_DRAFT.md
    - 0900100017_TRAINING_COACH_FAQ_ACTUAL_EN_COPY_DRAFT.md
    - 0700100011_TRAINING_COACH_HELP_ARTICLE_ACTUAL_JA_COPY_DRAFT.md
    - 0700100012_TRAINING_COACH_HELP_ARTICLE_ACTUAL_EN_COPY_DRAFT.md
    - 0900100021_TRAINING_COACH_AI_SUPPORT_ACTUAL_JA_EN_COPY_DRAFT.md
    - 0900100023_TRAINING_COACH_NOTIFICATION_ACTUAL_JA_FINAL_POLISH_DRAFT.md
    - 0900100020_TRAINING_COACH_NOTIFICATION_ACTUAL_EN_COPY_DRAFT.md

package_5_future_share:
  audience:
    - privacy reviewer
    - future feature designer
  key_files:
    - 0500100004_TRAINING_COACH_FAMILY_SHARE_EXACT_DESIGN.md
    - 0600100007_TRAINING_COACH_FAMILY_SHARE_PAYLOAD_AND_PERMISSION_DETAIL.md
    - 0300100011_TRAINING_COACH_SHARE_STORAGE_PHYSICAL_MODEL_CANDIDATE.md
    - 0900100012_TRAINING_COACH_SHARE_VIEWER_UI_EXACT_DESIGN.md
    - 0900100018_TRAINING_COACH_SHARE_VIEWER_ACTUAL_JA_COPY_DRAFT.md
    - 0900100019_TRAINING_COACH_SHARE_VIEWER_ACTUAL_EN_COPY_DRAFT.md

handoff_notes:
  - 実装はまだ開始していないことを必ず明示する
  - DDL は draft であり、apply-ready ではないことを明示する
  - future share は初期実装対象外であることを明示する
