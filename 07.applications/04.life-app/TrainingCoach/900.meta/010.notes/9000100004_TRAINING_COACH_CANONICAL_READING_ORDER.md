# ============================================================
# TRAINING COACH CANONICAL READING ORDER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 900.meta
owner: Boss
prepared_by: Zero

purpose:
  - TrainingCoach の設計資料をどの順で読むと理解しやすいか固定する
  - 文書量が増えた中でも入口を一本化する

reading_order:

phase_1_identity_and_scope:
  - 00_TRAINING_COACH_FINAL_INTEGRATED_CANONICAL_SUMMARY.md
  - 00_TRAINING_COACH_INTEGRATED.md
  - 010.constitution/010.core/0100100001_TRAINING_COACH_CONSTITUTION_CORE.md
  - 070.operations/010.plan-operation/0700100003_TRAINING_COACH_RELEASE_SLICE_AND_SCOPE_LOCK.md

phase_2_data_and_schema:
  - 030.model/010.entities/0300100005_TRAINING_COACH_SCHEMA_BINDING.md
  - 030.model/010.entities/0300100006_TRAINING_COACH_LIFE_TABLE_MAPPING.md
  - 030.model/010.entities/0300100007_TRAINING_COACH_RELATION_AND_CARDINALITY.md
  - 030.model/010.entities/0300100008_TRAINING_COACH_INDEX_AND_QUERY_STRATEGY.md
  - 120.implementation/020.sql-draft/1200200001_TRAINING_COACH_LIFE_DDL_DRAFT.sql
  - 120.implementation/020.sql-draft/1200200003_TRAINING_COACH_SHARE_SQL_DRAFT.sql

phase_3_runtime_and_payload:
  - 040.runtime/010.execution/0400100002_TRAINING_COACH_STATE_TRANSITION_EXACT_MATRIX.md
  - 050.flow/010.user-flow/0500100002_TRAINING_COACH_SCREEN_FLOW_EXACT_PAYLOAD.md
  - 060.integration/010.lifeos-linkage/0600100002_TRAINING_COACH_LIFEOS_EXACT_PAYLOAD.md
  - 060.integration/010.lifeos-linkage/0600100006_TRAINING_COACH_API_DB_EXACT_MAPPING.md
  - 090.interface/010.ui/0900100003_TRAINING_COACH_EMPTY_ERROR_RESPONSE_CONTRACT.md

phase_4_copy_and_user_experience:
  - 050.flow/010.user-flow/0500100003_TRAINING_COACH_ONBOARDING_EXACT_DESIGN.md
  - 070.operations/010.plan-operation/0700100004_TRAINING_COACH_NOTIFICATION_EXACT_DESIGN.md
  - 080.policy/010.app-policy/0800100005_TRAINING_COACH_LOCALIZATION_AND_MESSAGE_KEY_POLICY.md
  - 090.interface/010.ui/0900100022_TRAINING_COACH_PREMIUM_ACTUAL_JA_EN_FULL_COPY_DRAFT.md
  - 090.interface/010.ui/0900100024_TRAINING_COACH_GUIDE_CONTENT_ACTUAL_BODY_DRAFT_SET.md

phase_5_help_and_support:
  - 070.operations/010.plan-operation/0700100005_TRAINING_COACH_HELP_FAQ_EXACT_DESIGN.md
  - 070.operations/010.plan-operation/0700100009_TRAINING_COACH_HELP_CENTER_TAXONOMY_CANONICAL_LIST.md
  - 070.operations/010.plan-operation/0700100010_TRAINING_COACH_HELP_ARTICLE_FULL_INVENTORY.md
  - 070.operations/010.plan-operation/0700100013_TRAINING_COACH_HELP_ARTICLE_LEDGER_LINKAGE.md
  - 070.operations/010.plan-operation/0700100006_TRAINING_COACH_AI_SUPPORT_RESPONSE_POLICY.md

phase_6_future_share_and_governance:
  - 050.flow/010.user-flow/0500100004_TRAINING_COACH_FAMILY_SHARE_EXACT_DESIGN.md
  - 060.integration/010.lifeos-linkage/0600100007_TRAINING_COACH_FAMILY_SHARE_PAYLOAD_AND_PERMISSION_DETAIL.md
  - 030.model/010.entities/0300100011_TRAINING_COACH_SHARE_STORAGE_PHYSICAL_MODEL_CANDIDATE.md
  - 090.interface/010.ui/0900100012_TRAINING_COACH_SHARE_VIEWER_UI_EXACT_DESIGN.md
  - 080.policy/010.app-policy/0800100007_TRAINING_COACH_CONTENT_REVIEW_ROLE_MATRIX.md

phase_7_final_position:
  - 120.implementation/010.release-readiness/1200100018_TRAINING_COACH_CROSS_DOCUMENT_CONSISTENCY_AUDIT_SUMMARY.md
  - 130.development/010.roadmap/1300100018_TRAINING_COACH_DESIGN_CONSOLIDATION_BATCH_12_SUMMARY.md

notes:
  - まず phase_1〜3 で構造を掴む
  - copy や support は phase_4〜5 で追う
  - future share は初期実装対象外だが、意味境界として読む価値が高い
