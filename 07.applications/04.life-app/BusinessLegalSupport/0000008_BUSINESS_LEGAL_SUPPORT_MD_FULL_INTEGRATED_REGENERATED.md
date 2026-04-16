# ============================================================
# BUSINESS LEGAL SUPPORT MD FULL INTEGRATED REGENERATED
# ============================================================

status: canonical-integrated-regenerated
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero
generated_at: 2026-04-15 05:51:01 +0900
source_root: /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/BusinessLegalSupport
source_markdown_file_count: 195

# PURPOSE
This file is the regenerated full integrated markdown edition of
BusinessLegalSupport.
It concatenates the current markdown files that exist under the app
directory at generation time.

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# SOURCE FILE ORDER
- 0000000_BUSINESS_LEGAL_SUPPORT_INDEX.md
- 0000001_BUSINESS_LEGAL_SUPPORT_OVERVIEW.md
- 0000002_BUSINESS_LEGAL_SUPPORT_CANONICAL.md
- 0000003_BUSINESS_LEGAL_SUPPORT_FULL_DESIGN_INTEGRATED.md
- 0000004_BUSINESS_LEGAL_SUPPORT_FINAL_DESIGN_STATUS.md
- 0000005_BUSINESS_LEGAL_SUPPORT_NEXT_PHASE_HANDOFF.md
- 0000006_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETE_DECLARATION.md
- 0000007_BUSINESS_LEGAL_SUPPORT_MASTER_READING_GUIDE.md
- 010.constitution/010.core/0100002_CONSTITUTION_CORE_INDEX.md
- 010.constitution/010.core/0100003_CONSTITUTION_CORE_OVERVIEW.md
- 010.constitution/010.core/0100004_BUSINESS_LEGAL_SUPPORT_CORE_PRINCIPLES.md
- 010.constitution/0100000_CONSTITUTION_INDEX.md
- 010.constitution/0100001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_OVERVIEW.md
- 010.constitution/020.detail/0100200000_CONSTITUTION_DETAIL_INDEX.md
- 010.constitution/020.detail/0100200001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_DETAIL_OVERVIEW.md
- 010.constitution/020.detail/0100200002_BUSINESS_LEGAL_SUPPORT_PROBLEM_STATEMENT.md
- 010.constitution/020.detail/0100200003_BUSINESS_LEGAL_SUPPORT_NON_GOAL_AND_BOUNDARY_CHARTER.md
- 010.constitution/020.detail/0100200004_BUSINESS_LEGAL_SUPPORT_VALUE_PROPOSITION.md
- 020.architecture/010.core/0200002_ARCHITECTURE_CORE_INDEX.md
- 020.architecture/010.core/0200003_ARCHITECTURE_CORE_OVERVIEW.md
- 020.architecture/010.core/0200004_BUSINESS_LEGAL_SUPPORT_SYSTEM_ARCHITECTURE.md
- 020.architecture/020.detail/0200200000_ARCHITECTURE_DETAIL_INDEX.md
- 020.architecture/020.detail/0200200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_DETAIL_OVERVIEW.md
- 020.architecture/020.detail/0200200002_BUSINESS_LEGAL_SUPPORT_COMPONENT_MAP.md
- 020.architecture/020.detail/0200200003_BUSINESS_LEGAL_SUPPORT_READ_WRITE_BOUNDARY.md
- 020.architecture/020.detail/0200200004_BUSINESS_LEGAL_SUPPORT_SOURCE_OF_TRUTH_POLICY.md
- 020.architecture/0200000_ARCHITECTURE_INDEX.md
- 020.architecture/0200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_OVERVIEW.md
- 030.model/010.core/0300002_MODEL_CORE_INDEX.md
- 030.model/010.core/0300003_MODEL_CORE_OVERVIEW.md
- 030.model/010.core/0300004_BUSINESS_LEGAL_SUPPORT_DOMAIN_MODEL.md
- 030.model/020.detail/0300200000_MODEL_DETAIL_INDEX.md
- 030.model/020.detail/0300200001_BUSINESS_LEGAL_SUPPORT_MODEL_DETAIL_OVERVIEW.md
- 030.model/020.detail/0300200002_BUSINESS_LEGAL_SUPPORT_ENTITY_DEFINITIONS.md
- 030.model/020.detail/0300200003_BUSINESS_LEGAL_SUPPORT_FIELD_AND_CARDINALITY_MATRIX.md
- 030.model/020.detail/0300200004_BUSINESS_LEGAL_SUPPORT_STATUS_AND_ENUM_RULES.md
- 030.model/030.schema/0300300000_SCHEMA_DESIGN_INDEX.md
- 030.model/030.schema/0300300001_BUSINESS_LEGAL_SUPPORT_SCHEMA_DESIGN_OVERVIEW.md
- 030.model/030.schema/0300300002_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_CATALOG.md
- 030.model/030.schema/0300300003_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_DEFINITIONS.md
- 030.model/030.schema/0300300004_BUSINESS_LEGAL_SUPPORT_LOGICAL_COLUMN_STANDARD.md
- 030.model/030.schema/0300300005_BUSINESS_LEGAL_SUPPORT_LIFE_SCHEMA_BOUNDARY_POLICY.md
- 030.model/030.schema/0300300006_BUSINESS_LEGAL_SUPPORT_RETENTION_AND_SOFT_DELETE_POLICY.md
- 030.model/030.schema/0300300007_BUSINESS_LEGAL_SUPPORT_UNIQUE_KEY_AND_INDEX_POLICY.md
- 030.model/0300000_MODEL_INDEX.md
- 030.model/0300001_BUSINESS_LEGAL_SUPPORT_MODEL_OVERVIEW.md
- 030.model/040.ddl-readiness/0300400000_DDL_READINESS_INDEX.md
- 030.model/040.ddl-readiness/0300400001_BUSINESS_LEGAL_SUPPORT_DDL_READINESS_OVERVIEW.md
- 030.model/040.ddl-readiness/0300400002_BUSINESS_LEGAL_SUPPORT_TABLE_CREATION_ORDER.md
- 030.model/040.ddl-readiness/0300400003_BUSINESS_LEGAL_SUPPORT_KEY_AND_CONSTRAINT_POLICY.md
- 030.model/040.ddl-readiness/0300400004_BUSINESS_LEGAL_SUPPORT_TIMESTAMP_AND_SOFT_DELETE_POLICY.md
- 030.model/040.ddl-readiness/0300400005_BUSINESS_LEGAL_SUPPORT_INDEX_AND_SEARCH_POLICY.md
- 030.model/040.ddl-readiness/0300400006_BUSINESS_LEGAL_SUPPORT_SQL_IMPLEMENTATION_BOUNDARY.md
- 040.runtime/010.core/0400002_RUNTIME_CORE_INDEX.md
- 040.runtime/010.core/0400003_RUNTIME_CORE_OVERVIEW.md
- 040.runtime/010.core/0400004_BUSINESS_LEGAL_SUPPORT_RUNTIME_BEHAVIOR.md
- 040.runtime/020.detail/0400200000_RUNTIME_DETAIL_INDEX.md
- 040.runtime/020.detail/0400200001_BUSINESS_LEGAL_SUPPORT_RUNTIME_DETAIL_OVERVIEW.md
- 040.runtime/020.detail/0400200002_BUSINESS_LEGAL_SUPPORT_RUNTIME_EVENT_CHAIN.md
- 040.runtime/020.detail/0400200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_RUNTIME_RULES.md
- 040.runtime/020.detail/0400200004_BUSINESS_LEGAL_SUPPORT_SUMMARY_GENERATION_RUNTIME.md
- 040.runtime/0400000_RUNTIME_INDEX.md
- 040.runtime/0400001_BUSINESS_LEGAL_SUPPORT_RUNTIME_OVERVIEW.md
- 050.flow/010.core/0500002_FLOW_CORE_INDEX.md
- 050.flow/010.core/0500003_FLOW_CORE_OVERVIEW.md
- 050.flow/010.core/0500004_BUSINESS_LEGAL_SUPPORT_USER_FLOW.md
- 050.flow/020.detail/0500200000_FLOW_DETAIL_INDEX.md
- 050.flow/020.detail/0500200001_BUSINESS_LEGAL_SUPPORT_FLOW_DETAIL_OVERVIEW.md
- 050.flow/020.detail/0500200002_BUSINESS_LEGAL_SUPPORT_CORE_USER_JOURNEYS.md
- 050.flow/020.detail/0500200003_BUSINESS_LEGAL_SUPPORT_ISSUE_INTAKE_FLOW.md
- 050.flow/020.detail/0500200004_BUSINESS_LEGAL_SUPPORT_BRIDGE_TRIGGER_FLOW.md
- 050.flow/030.state-machine/0500300000_STATE_MACHINE_INDEX.md
- 050.flow/030.state-machine/0500300001_BUSINESS_LEGAL_SUPPORT_STATE_MACHINE_OVERVIEW.md
- 050.flow/030.state-machine/0500300002_BUSINESS_LEGAL_SUPPORT_ISSUE_STATE_TRANSITIONS.md
- 050.flow/030.state-machine/0500300003_BUSINESS_LEGAL_SUPPORT_CONTRACT_STATUS_TRANSITIONS.md
- 050.flow/030.state-machine/0500300004_BUSINESS_LEGAL_SUPPORT_DEADLINE_COMPLETION_TRANSITIONS.md
- 050.flow/030.state-machine/0500300005_BUSINESS_LEGAL_SUPPORT_ADVISOR_SHARE_LIFECYCLE.md
- 050.flow/030.state-machine/0500300006_BUSINESS_LEGAL_SUPPORT_INVALID_TRANSITION_POLICY.md
- 050.flow/0500000_FLOW_INDEX.md
- 050.flow/0500001_BUSINESS_LEGAL_SUPPORT_FLOW_OVERVIEW.md
- 060.integration/010.core/0600002_INTEGRATION_CORE_INDEX.md
- 060.integration/010.core/0600003_INTEGRATION_CORE_OVERVIEW.md
- 060.integration/010.core/0600004_BUSINESS_LEGAL_SUPPORT_INTEGRATION_BOUNDARY.md
- 060.integration/020.detail/0600200000_INTEGRATION_DETAIL_INDEX.md
- 060.integration/020.detail/0600200001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_DETAIL_OVERVIEW.md
- 060.integration/020.detail/0600200002_BUSINESS_LEGAL_SUPPORT_BOUNDARY_MATRIX.md
- 060.integration/020.detail/0600200003_BUSINESS_LEGAL_SUPPORT_HANDOFF_RULES.md
- 060.integration/030.api-contract/0600300000_API_CONTRACT_INDEX.md
- 060.integration/030.api-contract/0600300001_BUSINESS_LEGAL_SUPPORT_API_CONTRACT_OVERVIEW.md
- 060.integration/030.api-contract/0600300002_BUSINESS_LEGAL_SUPPORT_ENDPOINT_CATALOG.md
- 060.integration/030.api-contract/0600300003_BUSINESS_LEGAL_SUPPORT_WRITE_ENDPOINT_CONTRACT.md
- 060.integration/030.api-contract/0600300004_BUSINESS_LEGAL_SUPPORT_READ_AND_LIST_ENDPOINT_CONTRACT.md
- 060.integration/030.api-contract/0600300005_BUSINESS_LEGAL_SUPPORT_SUMMARY_SHARE_HANDOFF_ENDPOINT_CONTRACT.md
- 060.integration/030.api-contract/0600300006_BUSINESS_LEGAL_SUPPORT_ERROR_AND_RESPONSE_ENVELOPE_POLICY.md
- 060.integration/0600000_INTEGRATION_INDEX.md
- 060.integration/0600001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_OVERVIEW.md
- 070.operations/010.core/0700002_OPERATIONS_CORE_INDEX.md
- 070.operations/010.core/0700003_OPERATIONS_CORE_OVERVIEW.md
- 070.operations/010.core/0700004_BUSINESS_LEGAL_SUPPORT_OPERATIONS_GUIDE.md
- 070.operations/020.detail/0700200000_OPERATIONS_DETAIL_INDEX.md
- 070.operations/020.detail/0700200001_BUSINESS_LEGAL_SUPPORT_OPERATIONS_DETAIL_OVERVIEW.md
- 070.operations/020.detail/0700200002_BUSINESS_LEGAL_SUPPORT_OPERATING_RHYTHM.md
- 070.operations/020.detail/0700200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_AND_REVIEW_POLICY.md
- 070.operations/030.runbook/0700300000_RUNBOOK_INDEX.md
- 070.operations/030.runbook/0700300001_BUSINESS_LEGAL_SUPPORT_RUNBOOK_OVERVIEW.md
- 070.operations/030.runbook/0700300002_BUSINESS_LEGAL_SUPPORT_DAILY_WEEKLY_MONTHLY_RUNBOOK.md
- 070.operations/030.runbook/0700300003_BUSINESS_LEGAL_SUPPORT_ISSUE_CLEANUP_RUNBOOK.md
- 070.operations/0700000_OPERATIONS_INDEX.md
- 070.operations/0700001_BUSINESS_LEGAL_SUPPORT_OPERATIONS_OVERVIEW.md
- 080.policy/010.core/0800002_POLICY_CORE_INDEX.md
- 080.policy/010.core/0800003_POLICY_CORE_OVERVIEW.md
- 080.policy/010.core/0800004_BUSINESS_LEGAL_SUPPORT_POLICY_SET.md
- 080.policy/020.detail/0800200000_POLICY_DETAIL_INDEX.md
- 080.policy/020.detail/0800200001_BUSINESS_LEGAL_SUPPORT_POLICY_DETAIL_OVERVIEW.md
- 080.policy/020.detail/0800200002_BUSINESS_LEGAL_SUPPORT_AI_LEGAL_BOUNDARY_POLICY.md
- 080.policy/020.detail/0800200003_BUSINESS_LEGAL_SUPPORT_SHARING_AND_EXPORT_POLICY.md
- 080.policy/030.pricing-and-disclaimer/0800300000_PRICING_AND_DISCLAIMER_INDEX.md
- 080.policy/030.pricing-and-disclaimer/0800300001_BUSINESS_LEGAL_SUPPORT_PRICING_POLICY.md
- 080.policy/030.pricing-and-disclaimer/0800300002_BUSINESS_LEGAL_SUPPORT_FEATURE_TIER_POLICY.md
- 080.policy/030.pricing-and-disclaimer/0800300003_BUSINESS_LEGAL_SUPPORT_DISCLAIMER_TEXT_POLICY.md
- 080.policy/0800000_POLICY_INDEX.md
- 080.policy/0800001_BUSINESS_LEGAL_SUPPORT_POLICY_OVERVIEW.md
- 090.interface/010.core/0900002_INTERFACE_CORE_INDEX.md
- 090.interface/010.core/0900003_INTERFACE_CORE_OVERVIEW.md
- 090.interface/010.core/0900004_BUSINESS_LEGAL_SUPPORT_INTERFACE_SPEC.md
- 090.interface/020.detail/0900200000_INTERFACE_DETAIL_INDEX.md
- 090.interface/020.detail/0900200001_BUSINESS_LEGAL_SUPPORT_INTERFACE_DETAIL_OVERVIEW.md
- 090.interface/020.detail/0900200002_BUSINESS_LEGAL_SUPPORT_SCREEN_CATALOG.md
- 090.interface/020.detail/0900200003_BUSINESS_LEGAL_SUPPORT_SCREEN_TRANSITION_RULES.md
- 090.interface/020.detail/0900200004_BUSINESS_LEGAL_SUPPORT_LIST_AND_DETAIL_PRESENTATION_RULES.md
- 090.interface/030.screen-fields/0900300000_SCREEN_FIELD_INDEX.md
- 090.interface/030.screen-fields/0900300001_BUSINESS_LEGAL_SUPPORT_SCREEN_FIELD_OVERVIEW.md
- 090.interface/030.screen-fields/0900300002_BUSINESS_LEGAL_SUPPORT_DASHBOARD_SCREEN_FIELDS.md
- 090.interface/030.screen-fields/0900300003_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_LIST_AND_DETAIL_FIELDS.md
- 090.interface/030.screen-fields/0900300004_BUSINESS_LEGAL_SUPPORT_CONTRACT_AND_DEADLINE_SCREEN_FIELDS.md
- 090.interface/030.screen-fields/0900300005_BUSINESS_LEGAL_SUPPORT_CONSULTATION_AND_SHARE_SCREEN_FIELDS.md
- 090.interface/0900000_INTERFACE_INDEX.md
- 090.interface/0900001_BUSINESS_LEGAL_SUPPORT_INTERFACE_OVERVIEW.md
- 100.security/010.core/1000002_SECURITY_CORE_INDEX.md
- 100.security/010.core/1000003_SECURITY_CORE_OVERVIEW.md
- 100.security/010.core/1000004_BUSINESS_LEGAL_SUPPORT_SECURITY_MODEL.md
- 100.security/020.access-control/1000200000_ACCESS_CONTROL_INDEX.md
- 100.security/020.access-control/1000200001_BUSINESS_LEGAL_SUPPORT_ACCESS_CONTROL_OVERVIEW.md
- 100.security/020.access-control/1000200002_BUSINESS_LEGAL_SUPPORT_ROLE_AND_PERMISSION_MATRIX.md
- 100.security/020.access-control/1000200003_BUSINESS_LEGAL_SUPPORT_OWNER_AND_ADVISOR_SCOPE_RULES.md
- 100.security/020.access-control/1000200004_BUSINESS_LEGAL_SUPPORT_VISIBILITY_AND_SOFT_DELETE_RULES.md
- 100.security/020.access-control/1000200005_BUSINESS_LEGAL_SUPPORT_EXPORT_AND_SHARE_ACCESS_POLICY.md
- 100.security/020.access-control/1000200006_BUSINESS_LEGAL_SUPPORT_RLS_READINESS_NOTES.md
- 100.security/030.data-classification/1000300000_DATA_CLASSIFICATION_INDEX.md
- 100.security/030.data-classification/1000300001_BUSINESS_LEGAL_SUPPORT_DATA_CLASSIFICATION_OVERVIEW.md
- 100.security/030.data-classification/1000300002_BUSINESS_LEGAL_SUPPORT_DATA_SENSITIVITY_MATRIX.md
- 100.security/030.data-classification/1000300003_BUSINESS_LEGAL_SUPPORT_ATTACHMENT_HANDLING_CLASSIFICATION.md
- 100.security/1000000_SECURITY_INDEX.md
- 100.security/1000001_BUSINESS_LEGAL_SUPPORT_SECURITY_OVERVIEW.md
- 110.infrastructure/010.core/1100002_INFRASTRUCTURE_CORE_INDEX.md
- 110.infrastructure/010.core/1100003_INFRASTRUCTURE_CORE_OVERVIEW.md
- 110.infrastructure/010.core/1100004_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_PROFILE.md
- 110.infrastructure/020.detail/1100200000_INFRASTRUCTURE_DETAIL_INDEX.md
- 110.infrastructure/020.detail/1100200001_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_DETAIL_OVERVIEW.md
- 110.infrastructure/020.detail/1100200002_BUSINESS_LEGAL_SUPPORT_STORAGE_AND_FILE_HANDLING_ASSUMPTIONS.md
- 110.infrastructure/020.detail/1100200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_AND_JOB_ASSUMPTIONS.md
- 110.infrastructure/020.detail/1100200004_BUSINESS_LEGAL_SUPPORT_MULTI_DEVICE_ASSUMPTIONS.md
- 110.infrastructure/1100000_INFRASTRUCTURE_INDEX.md
- 110.infrastructure/1100001_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_OVERVIEW.md
- 120.implementation/010.core/1200002_IMPLEMENTATION_CORE_INDEX.md
- 120.implementation/010.core/1200003_IMPLEMENTATION_CORE_OVERVIEW.md
- 120.implementation/010.core/1200004_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_PLAN.md
- 120.implementation/020.payload/1200200000_PAYLOAD_DESIGN_INDEX.md
- 120.implementation/020.payload/1200200001_BUSINESS_LEGAL_SUPPORT_PAYLOAD_OVERVIEW.md
- 120.implementation/020.payload/1200200002_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_PAYLOAD.md
- 120.implementation/020.payload/1200200003_BUSINESS_LEGAL_SUPPORT_CONTRACT_AND_DEADLINE_PAYLOAD.md
- 120.implementation/020.payload/1200200004_BUSINESS_LEGAL_SUPPORT_RISK_AND_CONSULTATION_PAYLOAD.md
- 120.implementation/020.payload/1200200005_BUSINESS_LEGAL_SUPPORT_SUMMARY_EXPORT_AND_HANDOFF_PAYLOAD.md
- 120.implementation/030.phase-boundary/1200300000_PHASE_BOUNDARY_INDEX.md
- 120.implementation/030.phase-boundary/1200300001_BUSINESS_LEGAL_SUPPORT_PHASE_BOUNDARY_OVERVIEW.md
- 120.implementation/030.phase-boundary/1200300002_BUSINESS_LEGAL_SUPPORT_WHAT_IS_FIXED_NOW.md
- 120.implementation/030.phase-boundary/1200300003_BUSINESS_LEGAL_SUPPORT_WHAT_IS_DEFERRED.md
- 120.implementation/1200000_IMPLEMENTATION_INDEX.md
- 120.implementation/1200001_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_OVERVIEW.md
- 130.development/010.core/1300002_DEVELOPMENT_CORE_INDEX.md
- 130.development/010.core/1300003_DEVELOPMENT_CORE_OVERVIEW.md
- 130.development/010.core/1300004_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_ROADMAP.md
- 130.development/020.review-checklist/1300200000_REVIEW_CHECKLIST_INDEX.md
- 130.development/020.review-checklist/1300200001_BUSINESS_LEGAL_SUPPORT_REVIEW_CHECKLIST_OVERVIEW.md
- 130.development/020.review-checklist/1300200002_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_REVIEW_CHECKLIST.md
- 130.development/020.review-checklist/1300200003_BUSINESS_LEGAL_SUPPORT_DATA_AND_API_REVIEW_CHECKLIST.md
- 130.development/020.review-checklist/1300200004_BUSINESS_LEGAL_SUPPORT_POLICY_AND_SECURITY_REVIEW_CHECKLIST.md
- 130.development/030.final-audit/1300300000_FINAL_AUDIT_INDEX.md
- 130.development/030.final-audit/1300300001_BUSINESS_LEGAL_SUPPORT_FINAL_AUDIT_OVERVIEW.md
- 130.development/030.final-audit/1300300002_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETENESS_AUDIT.md
- 130.development/030.final-audit/1300300003_BUSINESS_LEGAL_SUPPORT_OPEN_ITEMS_AND_DEFERRALS.md
- 130.development/030.final-audit/1300300004_BUSINESS_LEGAL_SUPPORT_READINESS_JUDGMENT.md
- 130.development/030.final-audit/1300300005_BUSINESS_LEGAL_SUPPORT_FINAL_SIGNOFF_CRITERIA.md
- 130.development/1300000_DEVELOPMENT_INDEX.md
- 130.development/1300001_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_OVERVIEW.md

# ============================================================
# FULL INTEGRATED BODY
# ============================================================

-------------------------------------------------------------------------------
SOURCE_FILE: 0000000_BUSINESS_LEGAL_SUPPORT_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の正本設計書群の入口
  - 各レイヤの読み順固定
  - LifeOS寄りの事業法務整理アプリとしての設計位置づけ整理

read_order:
  - 0000001_BUSINESS_LEGAL_SUPPORT_OVERVIEW.md
  - 0000002_BUSINESS_LEGAL_SUPPORT_CANONICAL.md
  - 010.constitution/0100000_CONSTITUTION_INDEX.md
  - 020.architecture/0200000_ARCHITECTURE_INDEX.md
  - 030.model/0300000_MODEL_INDEX.md
  - 040.runtime/0400000_RUNTIME_INDEX.md
  - 050.flow/0500000_FLOW_INDEX.md
  - 060.integration/0600000_INTEGRATION_INDEX.md
  - 070.operations/0700000_OPERATIONS_INDEX.md
  - 080.policy/0800000_POLICY_INDEX.md
  - 090.interface/0900000_INTERFACE_INDEX.md
  - 100.security/1000000_SECURITY_INDEX.md
  - 110.infrastructure/1100000_INFRASTRUCTURE_INDEX.md
  - 120.implementation/1200000_IMPLEMENTATION_INDEX.md
  - 130.development/1300000_DEVELOPMENT_INDEX.md
  - 0000003_BUSINESS_LEGAL_SUPPORT_FULL_DESIGN_INTEGRATED.md
  - 0000004_BUSINESS_LEGAL_SUPPORT_FINAL_DESIGN_STATUS.md
  - 0000005_BUSINESS_LEGAL_SUPPORT_NEXT_PHASE_HANDOFF.md
  - 0000006_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETE_DECLARATION.md
  - 0000007_BUSINESS_LEGAL_SUPPORT_MASTER_READING_GUIDE.md


-------------------------------------------------------------------------------
SOURCE_FILE: 0000001_BUSINESS_LEGAL_SUPPORT_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
owner: Boss
prepared_by: Zero

summary:
  - BusinessLegalSupport は個人事業主/小規模事業者向けの事業法務整理アプリである
  - 法的助言の代替ではなく、相談前整理・契約管理・期限管理・リスク整理を支援する
  - BusinessOS ではなく LifeOS 寄りの入口として、事業主の日常運用導線を軽く回せるようにする
  - 企業統制や正式承認の正本にはならず、必要時に BusinessOS/ERP 側へ明示導線で橋渡しする

main_users:
  - 個人事業主
  - 小規模事業者
  - 代表者

core_functions:
  - 法務案件作成
  - 契約書一覧
  - 期限管理
  - 相談メモ
  - 取引先整理
  - リスクメモ
  - 次回確認事項
  - 文書添付

pricing:
  free: 0
  standard: 500
  bridge: 900

non_goals:
  - 法的判断の断定
  - 有資格者の代替
  - 代理交渉
  - 正式意見書作成
  - ERP/BusinessOS の正式法務正本化


-------------------------------------------------------------------------------
SOURCE_FILE: 0000002_BUSINESS_LEGAL_SUPPORT_CANONICAL.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CANONICAL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
owner: Boss
prepared_by: Zero

positioning:
  - LifeOS / 法律領域
  - 個人事業/小規模事業者向け事業法務整理アプリ
  - 契約、労務論点、取引トラブル、規約確認、相談前整理の支援

boundaries:
  - BusinessOS/ERP 法務正本とは分離
  - 法的助言や代理行為は提供しない
  - 共通部品詳細は別チャットで管理される前提とし、本設計はアプリ固有責務を中心に扱う
  - 本格的企業統制機能は持たない

required_cross_cutting:
  multilingual: true
  multicurrency: true
  multi_device:
    iphone: true
    android: true
    pc: true
    tablet: true

ai_support:
  enabled: true
  scope:
    - 相談前の論点整理
    - 契約確認観点の提案
    - 期限漏れチェック
    - メモ要約
    - 専門家相談用の質問案整理
  prohibited:
    - 法的判断の断定
    - 違法/適法の確定
    - 有資格者を装う表現
    - 代理交渉


-------------------------------------------------------------------------------
SOURCE_FILE: 0000003_BUSINESS_LEGAL_SUPPORT_FULL_DESIGN_INTEGRATED.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FULL DESIGN INTEGRATED
# ============================================================

status: canonical-integrated-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero

# 1. PURPOSE
This document is the integrated top-level design summary for
BusinessLegalSupport.
It does not replace the detailed layer files, but it provides one
readable source that explains the whole application at once.

# 2. POSITIONING
BusinessLegalSupport is a LifeOS-side business legal support app for:
- sole proprietors
- small business operators
- owner-led representatives

It is intentionally:
- lightweight
- owner-driven
- consultation-preparation oriented
- separated from BusinessOS / ERP official legal truth

It is NOT:
- a law firm replacement
- a formal legal opinion generator
- an enterprise legal control system
- a direct ERP legal processing app

# 3. CORE VALUE
The app exists to reduce disorder before formal consultation.

Main value:
- organize issues
- keep contract and deadline visibility together
- prepare consultation notes and question lists
- track risks
- organize counterparties
- allow explicit read-only sharing
- prepare explicit BusinessOS handoff drafts when needed

# 4. PRIMARY DOMAIN BOUNDARY
Primary schema:
- life

Boundary rules:
- BusinessLegalSupport owns lightweight owner-side legal issue organization
- BusinessOS owns formal company-side legal operating structure when needed
- ERP is out of direct scope for this app
- source data remains life-side unless a later explicit bridge is performed

# 5. MAIN DATA AGGREGATION MODEL
The app is issue-centric.

Main root:
- legal_issue

Main children:
- contract_item
- deadline_record
- counterparty
- risk_note
- consultation_record
- attached_document
- legal_checklist
- trouble_timeline
- advisor_share_record

Core design rule:
- everything meaningful is gathered around issue_id
- counterparty is reusable
- attachments may belong to issue root or specific child objects
- share never transfers ownership

# 6. MAIN USER FLOWS
A. contract management flow
- create issue
- add contract
- add counterparty
- add deadlines
- review renewal risk
- prepare consultation summary

B. trouble handling flow
- create issue
- add timeline
- attach evidence
- add risk note
- prepare consultation memo
- generate summary output

C. advisor sharing flow
- generate summary
- choose share scope
- create read-only share
- optionally revoke later

D. BusinessOS bridge flow
- identify need for formal company-side treatment
- generate handoff draft
- do not write directly to ERP

# 7. STATUS DESIGN
Issue statuses:
- draft
- active
- waiting_external_reply
- waiting_owner_action
- completed
- archived

Contract statuses:
- draft
- signed
- active
- expiring
- ended
- canceled

Deadline state:
- pending
- completed

Share lifecycle:
- active_share
- revoked_share

Important rule:
- deadline completion must not auto-close issue
- archive and delete are separate concepts
- re-share should be a new share record, not a revoked share reversal

# 8. API / PAYLOAD DIRECTION
Base path:
- /api/life/business-legal-support/v1

Design principle:
- payloads are explicit and stable
- uuid string ids
- date and datetime clearly separated
- list endpoints return items arrays
- write endpoints return saved resource views
- ERP direct API is not defined here

Main endpoint groups:
- legal-issues
- contracts
- deadlines
- counterparties
- risk-notes
- consultations
- checklists
- timeline-events
- summaries
- shares
- handoffs/businessos-draft

# 9. SCREEN DESIGN DIRECTION
Main screens:
- dashboard
- legal_issue_list
- legal_issue_detail
- contract_list
- contract_detail
- deadline_list
- counterparty_list
- consultation_prep
- summary_output
- advisor_share_view
- settings

Main UI rule:
- issue detail is the main hub
- dashboard shows urgency, not full text
- consultation surfaces must preserve disclaimer visibility
- share/export stays secondary, not the default primary action

# 10. SECURITY / ACCESS MODEL
Owner:
- full create/update/archive/soft-delete over owned records
- full summary/export/share control

Advisor_viewer:
- read-only only
- visible only when explicit share exists
- never gains edit authority
- never becomes source owner

Security rule highlights:
- deleted rows hidden from default reads
- revoked shares remove future visibility
- highly sensitive attachments should not be shared by default
- attachment access can be narrower than issue visibility

# 11. POLICY / DISCLAIMER
This app must always preserve:
- "This app is not a substitute for legal advice."
- "Final judgment must be made by the user or a qualified professional."

The app may support:
- issue summarization
- contract review viewpoints
- question drafting
- checklist support
- deadline awareness

The app may NOT:
- state final legal conclusions
- impersonate a lawyer
- claim lawful/unlawful finality
- give litigation odds

# 12. PRICING DIRECTION
Billing model:
- monthly-use application

Plan structure:
- free
- standard: 500 JPY / month
- bridge: 900 JPY / month

Commercial stance:
- free = entry
- standard = main paid plan
- bridge = stronger share / bridge usage
- no human legal support included
- support remains AI-chat only

# 13. DDL / SQL READINESS
Design-ready items already defined:
- logical table catalog
- logical table definitions
- column standard
- key and constraint policy
- timestamp / soft delete policy
- index guidance
- access-control readiness
- API contract readiness

Not yet implemented:
- exact CREATE TABLE SQL
- exact CREATE INDEX SQL
- exact RLS SQL
- actual backend implementation
- actual client implementation

# 14. CURRENT DESIGN JUDGMENT
BusinessLegalSupport is already structured enough to move into
implementation planning later.

At the current stage, the design is:
- app-scope consistent
- schema-boundary consistent
- payload-ready
- screen-field-ready
- access-control-ready
- DDL-readiness-ready

The major unresolved area is implementation detail, not product design.


-------------------------------------------------------------------------------
SOURCE_FILE: 0000004_BUSINESS_LEGAL_SUPPORT_FINAL_DESIGN_STATUS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FINAL DESIGN STATUS
# ============================================================

status: canonical-final-design-status
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero

# 1. PURPOSE
This document states what is already fixed and what remains outside
the current design phase.

# 2. CURRENT STATUS
Design status:
- structurally mature
- layer-complete
- extension-folder-complete
- payload-ready
- API-contract-ready
- access-model-ready
- implementation-not-started

# 3. WHAT IS ALREADY FIXED
Fixed already:
- positioning
- core purpose
- life schema boundary
- layer structure
- integrated root docs
- logical model
- schema design
- ddl readiness
- runtime direction
- flow detail
- state machine
- access control design
- data classification
- API contract
- screen field design
- pricing and disclaimer
- runbook and review checklist

# 4. WHAT IS NOT FIXED YET
Not fixed yet:
- exact SQL text
- exact RLS SQL text
- exact API implementation code
- exact mobile / web implementation
- exact storage implementation details
- exact notification scheduler implementation
- exact share token / external account handling

# 5. DESIGN COMPLETENESS JUDGMENT
Judgment:
- app design can be treated as near-complete
- remaining work is mostly implementation-phase work
- further product-side expansion should be limited unless strategy changes

# 6. SAFE NEXT STEP
Safest next step:
- do not expand app scope further
- move to implementation preparation only when desired
- preserve current boundary against BusinessOS / ERP overlap

# 7. FINAL NOTE
At this point, BusinessLegalSupport should be considered:
- design-complete enough for handoff
- not implementation-complete
- not SQL-complete
- not runtime-complete


-------------------------------------------------------------------------------
SOURCE_FILE: 0000005_BUSINESS_LEGAL_SUPPORT_NEXT_PHASE_HANDOFF.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT NEXT PHASE HANDOFF
# ============================================================

status: canonical-handoff
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero

# 1. PURPOSE
This document is the handoff note for the next phase after the current
design phase.

# 2. CURRENT POSITION
Current position:
- app design is broadly complete
- detailed documentation exists across all major layers
- root integrated design summary exists
- implementation has not started

# 3. DESIGN PHASE OUTPUTS AVAILABLE
Available design outputs:
- constitution
- architecture
- model
- runtime
- flow
- integration
- operations
- policy
- interface
- security
- infrastructure
- implementation-readiness
- development review

Detailed extensions already available:
- model detail
- schema design
- ddl readiness
- flow detail
- state machine
- integration detail
- api contract
- operations detail
- runbook
- policy detail
- pricing/disclaimer
- interface detail
- screen fields
- access control
- data classification
- infrastructure detail
- payload design
- phase boundary
- review checklist

# 4. RECOMMENDED NEXT PHASE ORDER
Recommended next phase order:
1. exact SQL / DDL design
2. exact RLS design
3. exact API implementation contract mapping
4. exact UI component structure
5. actual implementation

# 5. NON-NEGOTIABLE BOUNDARIES TO PRESERVE
Must preserve:
- schema remains life
- app remains owner-driven
- advisor_viewer remains read-only
- no ERP direct handling from this app
- no legal-advice impersonation
- no enterprise legal truth claim
- soft delete remains first-class
- issue-centric design remains the organizing model

# 6. WHAT SHOULD NOT HAPPEN IN NEXT PHASE
Do not:
- broaden scope into enterprise legal control
- merge this app into BusinessOS logic
- redefine it as a lawyer replacement
- bypass the current source-of-truth boundary
- treat summary export as official legal opinion

# 7. HANDOFF JUDGMENT
Handoff judgment:
- ready for implementation planning
- ready for SQL design phase
- ready for review by related architecture roles
- not in need of large product redesign unless strategy changes


-------------------------------------------------------------------------------
SOURCE_FILE: 0000006_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETE_DECLARATION.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DESIGN COMPLETE DECLARATION
# ============================================================

status: canonical-design-complete
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero

# 1. DECLARATION
BusinessLegalSupport is declared design-complete for the scope of this chat.

This means:
- the application scope is fixed
- the schema boundary is fixed
- the major layer structure is fixed
- the logical model is fixed
- the payload and API contract direction is fixed
- the interface field design is fixed
- the policy and security direction is fixed
- the implementation boundary is explicitly deferred

# 2. WHAT "DESIGN COMPLETE" MEANS HERE
Design complete does NOT mean:
- SQL complete
- RLS complete
- API implementation complete
- UI implementation complete
- runtime implementation complete

Design complete DOES mean:
- product definition is stable enough
- architecture direction is stable enough
- implementation can start later without redefining app purpose

# 3. FIXED CORE IDENTITY
App identity:
- BusinessLegalSupport
- LifeOS-side business legal support application
- primary schema: life

Primary fit:
- sole proprietors
- small business operators
- owner-led representatives

Primary value:
- issue organization
- contract and deadline visibility
- consultation preparation
- risk memo organization
- explicit share and BusinessOS handoff draft support

# 4. FIXED BOUNDARIES
Must remain true:
- this app is not a legal-advice substitute
- this app does not become enterprise legal truth
- this app does not directly process ERP legal truth
- advisor_viewer remains read-only
- source data remains life-side unless explicit later bridge work says otherwise

# 5. DESIGN ENDPOINT
This document marks the end of base design expansion for this chat.

Further work, if any, belongs to:
- implementation preparation
- SQL phase
- RLS phase
- API/UI build phase

# 6. CHANGE CONTROL NOTE
After this point:
- avoid widening app scope casually
- avoid mixing BusinessOS responsibility into this app
- avoid redefining the source-of-truth boundary
- avoid weakening the disclaimer and read-only sharing rules


-------------------------------------------------------------------------------
SOURCE_FILE: 0000007_BUSINESS_LEGAL_SUPPORT_MASTER_READING_GUIDE.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT MASTER READING GUIDE
# ============================================================

status: canonical-reading-guide
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero

# 1. PURPOSE
This guide provides the recommended reading order for understanding
BusinessLegalSupport without needing to jump randomly across all files.

# 2. SHORTEST READING PATH
For fastest understanding, read in this order:

1. 0000001_BUSINESS_LEGAL_SUPPORT_OVERVIEW.md
2. 0000002_BUSINESS_LEGAL_SUPPORT_CANONICAL.md
3. 0000003_BUSINESS_LEGAL_SUPPORT_FULL_DESIGN_INTEGRATED.md
4. 0000004_BUSINESS_LEGAL_SUPPORT_FINAL_DESIGN_STATUS.md
5. 0000006_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETE_DECLARATION.md

# 3. RECOMMENDED FULL READING PATH
After the shortest path, continue:

6. 010.constitution/0100001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_OVERVIEW.md
7. 020.architecture/0200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_OVERVIEW.md
8. 030.model/0300001_BUSINESS_LEGAL_SUPPORT_MODEL_OVERVIEW.md
9. 050.flow/0500001_BUSINESS_LEGAL_SUPPORT_FLOW_OVERVIEW.md
10. 060.integration/0600001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_OVERVIEW.md
11. 080.policy/0800001_BUSINESS_LEGAL_SUPPORT_POLICY_OVERVIEW.md
12. 090.interface/0900001_BUSINESS_LEGAL_SUPPORT_INTERFACE_OVERVIEW.md
13. 100.security/1000001_BUSINESS_LEGAL_SUPPORT_SECURITY_OVERVIEW.md
14. 120.implementation/1200001_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_OVERVIEW.md
15. 130.development/1300001_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_OVERVIEW.md

# 4. IF YOU WANT DATA FIRST
Read these next:

- 030.model/020.detail/0300200002_BUSINESS_LEGAL_SUPPORT_ENTITY_DEFINITIONS.md
- 030.model/030.schema/0300300003_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_DEFINITIONS.md
- 030.model/040.ddl-readiness/0300400003_BUSINESS_LEGAL_SUPPORT_KEY_AND_CONSTRAINT_POLICY.md

# 5. IF YOU WANT API / PAYLOAD FIRST
Read these next:

- 120.implementation/020.payload/1200200001_BUSINESS_LEGAL_SUPPORT_PAYLOAD_OVERVIEW.md
- 120.implementation/020.payload/1200200002_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_PAYLOAD.md
- 060.integration/030.api-contract/0600300002_BUSINESS_LEGAL_SUPPORT_ENDPOINT_CATALOG.md
- 060.integration/030.api-contract/0600300003_BUSINESS_LEGAL_SUPPORT_WRITE_ENDPOINT_CONTRACT.md

# 6. IF YOU WANT UI FIRST
Read these next:

- 090.interface/020.detail/0900200002_BUSINESS_LEGAL_SUPPORT_SCREEN_CATALOG.md
- 090.interface/030.screen-fields/0900300003_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_LIST_AND_DETAIL_FIELDS.md
- 090.interface/030.screen-fields/0900300005_BUSINESS_LEGAL_SUPPORT_CONSULTATION_AND_SHARE_SCREEN_FIELDS.md

# 7. IF YOU WANT POLICY / SECURITY FIRST
Read these next:

- 080.policy/020.detail/0800200002_BUSINESS_LEGAL_SUPPORT_AI_LEGAL_BOUNDARY_POLICY.md
- 100.security/020.access-control/1000200002_BUSINESS_LEGAL_SUPPORT_ROLE_AND_PERMISSION_MATRIX.md
- 100.security/030.data-classification/1000300002_BUSINESS_LEGAL_SUPPORT_DATA_SENSITIVITY_MATRIX.md

# 8. IF YOU WANT FINAL PHASE JUDGMENT
Read these last:

- 0000005_BUSINESS_LEGAL_SUPPORT_NEXT_PHASE_HANDOFF.md
- 130.development/030.final-audit/1300300004_BUSINESS_LEGAL_SUPPORT_READINESS_JUDGMENT.md
- 130.development/030.final-audit/1300300005_BUSINESS_LEGAL_SUPPORT_FINAL_SIGNOFF_CRITERIA.md

# 9. READING NOTE
If the goal is simply to know whether the app is "ready enough on design":
- read the shortest path only

If the goal is to start implementation later:
- shortest path
- data first
- API / payload first
- policy / security first


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/010.core/0100002_CONSTITUTION_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# CONSTITUTION CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 010.constitution
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0100003_CONSTITUTION_CORE_OVERVIEW.md
  - 0100004_BUSINESS_LEGAL_SUPPORT_CORE_PRINCIPLES.md


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/010.core/0100003_CONSTITUTION_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# CONSTITUTION CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 010.constitution
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の 憲章 における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/010.core/0100004_BUSINESS_LEGAL_SUPPORT_CORE_PRINCIPLES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CORE PRINCIPLES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 010.constitution
subfolder: 010.core
owner: Boss
prepared_by: Zero

principles:
  - 個人事業主/小規模事業者の事業法務整理を支援する
  - 最終判断は本人または有資格専門家が行う
  - 法的助言ではなく整理支援である
  - 契約、期限、取引先、リスクを一体で見直せる
  - 共有は許可範囲に限定する

boundaries:
  - 本格的企業統制機能を持たない
  - 代理行為を行わない
  - 訴訟戦略の断定を行わない
  - ERP へ自動送信しない


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/0100000_CONSTITUTION_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# CONSTITUTION INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 010.constitution
owner: Boss
prepared_by: Zero

includes:
  - 0100001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_OVERVIEW.md
  - 010.core/0100002_CONSTITUTION_CORE_INDEX.md
  - 010.core/0100003_CONSTITUTION_CORE_OVERVIEW.md
  - 010.core/0100004_BUSINESS_LEGAL_SUPPORT_CORE_PRINCIPLES.md
  - 020.detail/0100200000_CONSTITUTION_DETAIL_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/0100001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CONSTITUTION OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 010.constitution
owner: Boss
prepared_by: Zero

layer_purpose:
  - 憲章レイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 事業法務整理アプリとしての存在目的を固定する
  - 法的助言代替ではないことを最上位で固定する
  - LifeOS寄りの事業主支援と BusinessOS 正式統制の境界を明文化する


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/020.detail/0100200000_CONSTITUTION_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# CONSTITUTION DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 010.constitution
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0100200001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_DETAIL_OVERVIEW.md
  - 0100200002_BUSINESS_LEGAL_SUPPORT_PROBLEM_STATEMENT.md
  - 0100200003_BUSINESS_LEGAL_SUPPORT_NON_GOAL_AND_BOUNDARY_CHARTER.md
  - 0100200004_BUSINESS_LEGAL_SUPPORT_VALUE_PROPOSITION.md


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/020.detail/0100200001_BUSINESS_LEGAL_SUPPORT_CONSTITUTION_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CONSTITUTION DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 010.constitution
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - 事業法務相談アプリとしての存在理由を詳細化する
  - BusinessOS や ERP と競合しない憲章を固定する
  - 「何をするか」より先に「何をしないか」を明確化する


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/020.detail/0100200002_BUSINESS_LEGAL_SUPPORT_PROBLEM_STATEMENT.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT PROBLEM STATEMENT
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 010.constitution
subfolder: 020.detail
owner: Boss
prepared_by: Zero

problem_statement:
  - 個人事業主や小規模事業者は、法務論点が発生しても正式法務体制を持たないことが多い
  - 契約、期限、相手方、相談メモ、リスクが分散しやすい
  - その結果、相談前整理が不十分になり、確認漏れや期限漏れが起こりやすい
  - しかし、いきなり企業統制レベルの法務システムは重すぎる

solution_direction:
  - 軽量な案件整理と相談前準備に特化する
  - 契約・期限・リスク・相談メモを owner 主導でひとまとめにする
  - 必要時のみ BusinessOS 側へ明示橋渡しする


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/020.detail/0100200003_BUSINESS_LEGAL_SUPPORT_NON_GOAL_AND_BOUNDARY_CHARTER.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT NON GOAL AND BOUNDARY CHARTER
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 010.constitution
subfolder: 020.detail
owner: Boss
prepared_by: Zero

non_goals:
  - 法的助言の確定
  - 違法/適法の最終判断
  - 訴訟戦略の確定
  - 顧問弁護士業務の代替
  - 企業法務統制の正本
  - ERP 直結処理

boundary_charter:
  - 本アプリは相談準備と整理支援で止まる
  - 会社全体の統制は BusinessOS 以降に委ねる
  - owner の個別管理領域として設計する
  - advisor_viewer は read-only に限る


-------------------------------------------------------------------------------
SOURCE_FILE: 010.constitution/020.detail/0100200004_BUSINESS_LEGAL_SUPPORT_VALUE_PROPOSITION.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT VALUE PROPOSITION
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 010.constitution
subfolder: 020.detail
owner: Boss
prepared_by: Zero

value_proposition:
  - 軽い
  - 早い
  - 相談前に頭を整理しやすい
  - 契約と期限を一緒に追える
  - BusinessOS に行く前の入口としてちょうど良い

target_fit:
  strongest_fit:
    - 個人事業主
    - 小規模事業者
    - 代表者本人が法務整理するケース
  weak_fit:
    - 多部署横断の企業法務
    - 厳格承認が必要な会社法務


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/010.core/0200002_ARCHITECTURE_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# ARCHITECTURE CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 020.architecture
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0200003_ARCHITECTURE_CORE_OVERVIEW.md
  - 0200004_BUSINESS_LEGAL_SUPPORT_SYSTEM_ARCHITECTURE.md


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/010.core/0200003_ARCHITECTURE_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# ARCHITECTURE CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 020.architecture
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の アーキテクチャ における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/010.core/0200004_BUSINESS_LEGAL_SUPPORT_SYSTEM_ARCHITECTURE.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SYSTEM ARCHITECTURE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 020.architecture
subfolder: 010.core
owner: Boss
prepared_by: Zero

architecture_blocks:
  - legal_case_workspace
  - contract_ledger_area
  - deadline_center
  - consultation_note_area
  - risk_tracking_area
  - counterparty_area
  - advisor_view_output
  - ai_support_assist
  - lifeos_bridge
  - businessos_bridge

bridge_rules:
  - LifeOS 連携は個人側予定や資金計画との接続を優先
  - BusinessOS/ERP 連携は明示操作のみ
  - 共通部品の詳細定義は別正本を参照する


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/020.detail/0200200000_ARCHITECTURE_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# ARCHITECTURE DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0200200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_DETAIL_OVERVIEW.md
  - 0200200002_BUSINESS_LEGAL_SUPPORT_COMPONENT_MAP.md
  - 0200200003_BUSINESS_LEGAL_SUPPORT_READ_WRITE_BOUNDARY.md
  - 0200200004_BUSINESS_LEGAL_SUPPORT_SOURCE_OF_TRUTH_POLICY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/020.detail/0200200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ARCHITECTURE DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - コンポーネント分離と責務境界を詳細化する
  - write path と read path を分けて整理する
  - source of truth の誤認を防ぐ


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/020.detail/0200200002_BUSINESS_LEGAL_SUPPORT_COMPONENT_MAP.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT COMPONENT MAP
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

components:
  issue_workspace:
    role:
      - 案件中心の主コンポーネント
  contract_ledger:
    role:
      - 契約台帳保持
  deadline_center:
    role:
      - 期限一覧と近接期限抽出
  consultation_prep:
    role:
      - 相談前質問と論点整理
  risk_tracking:
    role:
      - リスク分類と対応メモ
  counterparty_registry:
    role:
      - 相手方整理
  summary_exporter:
    role:
      - 相談前サマリー生成
  advisor_share_unit:
    role:
      - read-only 共有制御
  businessos_handoff_unit:
    role:
      - 明示橋渡しドラフト生成


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/020.detail/0200200003_BUSINESS_LEGAL_SUPPORT_READ_WRITE_BOUNDARY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT READ WRITE BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

write_boundary:
  owner_can_write:
    - legal_issue
    - contract_item
    - deadline_record
    - counterparty
    - risk_note
    - consultation_record
    - attachment metadata
    - checklist item
    - timeline event
    - share record creation
    - handoff draft creation

read_boundary:
  owner_can_read:
    - all owned records
  advisor_viewer_can_read:
    - only explicitly shared scope
    - read-only only

never_write_here:
  - enterprise legal truth
  - ERP official transaction
  - formal company approval result


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/020.detail/0200200004_BUSINESS_LEGAL_SUPPORT_SOURCE_OF_TRUTH_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SOURCE OF TRUTH POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

truth_policy:
  app_local_truth:
    - issue status for this app
    - consultation prep contents
    - owner risk memo
    - lightweight contract tracking in this app
  not_truth_here:
    - enterprise legal final truth
    - corporate approved record of truth
    - ERP operational truth
    - lawyer opinion truth

policy_note:
  - summary export is derived view
  - advisor share is derived exposure
  - BusinessOS handoff draft is transition artifact


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/0200000_ARCHITECTURE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# ARCHITECTURE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 020.architecture
owner: Boss
prepared_by: Zero

includes:
  - 0200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_OVERVIEW.md
  - 010.core/0200002_ARCHITECTURE_CORE_INDEX.md
  - 010.core/0200003_ARCHITECTURE_CORE_OVERVIEW.md
  - 010.core/0200004_BUSINESS_LEGAL_SUPPORT_SYSTEM_ARCHITECTURE.md
  - 020.detail/0200200000_ARCHITECTURE_DETAIL_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 020.architecture/0200001_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ARCHITECTURE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 020.architecture
owner: Boss
prepared_by: Zero

layer_purpose:
  - アーキテクチャレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 法務案件、契約、期限、添付、相談メモ、取引先管理を中心に構成する
  - LifeOS 側連携と BusinessOS/ERP への明示橋渡しを持つ
  - 共通部品は外部正本を参照する前提にする


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/010.core/0300002_MODEL_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# MODEL CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0300003_MODEL_CORE_OVERVIEW.md
  - 0300004_BUSINESS_LEGAL_SUPPORT_DOMAIN_MODEL.md


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/010.core/0300003_MODEL_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# MODEL CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の モデル における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/010.core/0300004_BUSINESS_LEGAL_SUPPORT_DOMAIN_MODEL.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DOMAIN MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

entities:
  - legal_issue
  - contract_item
  - deadline_record
  - counterparty
  - risk_note
  - consultation_record
  - attached_document
  - legal_checklist
  - trouble_timeline
  - advisor_share_record

model_rules:
  - 案件が中心で、契約・期限・メモ・添付がぶら下がる
  - 取引先は案件横断で再利用できる
  - advisor_viewer は正本移譲ではなく共有ビューとして扱う


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/020.detail/0300200000_MODEL_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# MODEL DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0300200001_BUSINESS_LEGAL_SUPPORT_MODEL_DETAIL_OVERVIEW.md
  - 0300200002_BUSINESS_LEGAL_SUPPORT_ENTITY_DEFINITIONS.md
  - 0300200003_BUSINESS_LEGAL_SUPPORT_FIELD_AND_CARDINALITY_MATRIX.md
  - 0300200004_BUSINESS_LEGAL_SUPPORT_STATUS_AND_ENUM_RULES.md


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/020.detail/0300200001_BUSINESS_LEGAL_SUPPORT_MODEL_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT MODEL DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の詳細モデル定義を固定する
  - 主要エンティティの責務、粒度、関係を明確化する
  - request/response exact payload 固定前の前提をそろえる

modeling_principles:
  - 正本スキーマは life
  - 事業法務相談整理のための軽量モデルに限定する
  - BusinessOS/ERP の正式統制モデルとは競合しない
  - 契約、期限、相談、リスク、取引先を案件中心で束ねる


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/020.detail/0300200002_BUSINESS_LEGAL_SUPPORT_ENTITY_DEFINITIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ENTITY DEFINITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

entities:

  legal_issue:
    role:
      - 本アプリの中心案件
      - 相談前整理の単位
    minimum_fields:
      - issue_id
      - owner_user_id
      - title
      - issue_type
      - status
      - priority
      - summary
      - started_on
      - next_action
      - created_at
      - updated_at

  contract_item:
    role:
      - 契約台帳
      - issue に紐づく契約単位の整理
    minimum_fields:
      - contract_id
      - issue_id
      - contract_type
      - title
      - counterparty_id
      - signed_on
      - effective_from
      - effective_to
      - renewal_rule
      - auto_renew_flag
      - contract_amount
      - currency_code
      - status
      - created_at
      - updated_at

  deadline_record:
    role:
      - 契約更新、回答、提出、確認などの期限管理
    minimum_fields:
      - deadline_id
      - issue_id
      - related_type
      - related_id
      - deadline_type
      - due_at
      - alert_policy_code
      - completed_flag
      - completed_at
      - created_at
      - updated_at

  counterparty:
    role:
      - 取引先や相手方の整理
    minimum_fields:
      - counterparty_id
      - owner_user_id
      - name
      - counterparty_type
      - country_code
      - contact_person
      - contact_note
      - relationship_note
      - risk_level
      - created_at
      - updated_at

  risk_note:
    role:
      - リスクの整理と対応メモ
    minimum_fields:
      - risk_note_id
      - issue_id
      - related_type
      - related_id
      - risk_category
      - severity
      - summary
      - mitigation_note
      - last_reviewed_at
      - created_at
      - updated_at

  consultation_record:
    role:
      - 相談前後の記録
    minimum_fields:
      - consultation_id
      - issue_id
      - consultation_purpose
      - memo
      - question_list_text
      - result_note
      - next_check_items
      - consulted_at
      - created_at
      - updated_at

  attached_document:
    role:
      - 契約書、証跡、メモ画像、参考資料の添付
    minimum_fields:
      - attachment_id
      - issue_id
      - related_type
      - related_id
      - file_name
      - file_kind
      - storage_scope
      - note
      - uploaded_at

  legal_checklist:
    role:
      - 相談前チェック項目
    minimum_fields:
      - checklist_id
      - issue_id
      - checklist_type
      - item_text
      - checked_flag
      - note
      - sort_order
      - created_at
      - updated_at

  trouble_timeline:
    role:
      - トラブルややり取りの時系列整理
    minimum_fields:
      - timeline_id
      - issue_id
      - occurred_at
      - event_type
      - summary
      - note
      - evidence_attachment_count
      - created_at
      - updated_at

  advisor_share_record:
    role:
      - advisor_viewer 向け共有履歴
    minimum_fields:
      - share_id
      - issue_id
      - share_scope
      - shared_to_label
      - shared_at
      - revoked_at
      - note


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/020.detail/0300200003_BUSINESS_LEGAL_SUPPORT_FIELD_AND_CARDINALITY_MATRIX.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FIELD AND CARDINALITY MATRIX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

cardinality:
  - one legal_issue has many contract_item
  - one legal_issue has many deadline_record
  - one legal_issue has many risk_note
  - one legal_issue has many consultation_record
  - one legal_issue has many attached_document
  - one legal_issue has many legal_checklist
  - one legal_issue has many trouble_timeline
  - one legal_issue has many advisor_share_record
  - one counterparty can be linked from many contract_item
  - one counterparty can be referenced by many legal_issue through contract or note

relation_rules:
  - issue_id is the main aggregation key
  - related_type + related_id is used only for optional secondary linkage
  - counterparty is reusable across issues
  - attachment can belong to issue root or a specific child object
  - share record never changes ownership of source data

required_vs_optional:
  required:
    - legal_issue.title
    - legal_issue.issue_type
    - legal_issue.status
    - contract_item.title
    - deadline_record.deadline_type
    - deadline_record.due_at
    - counterparty.name
  optional:
    - contract_item.contract_amount
    - counterparty.contact_person
    - consultation_record.result_note
    - risk_note.mitigation_note
    - advisor_share_record.revoked_at


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/020.detail/0300200004_BUSINESS_LEGAL_SUPPORT_STATUS_AND_ENUM_RULES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT STATUS AND ENUM RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

issue_type:
  - contract
  - labor
  - terms_and_policy
  - transaction_trouble
  - collection_and_payment
  - company_memo
  - other

issue_status:
  - draft
  - active
  - waiting_external_reply
  - waiting_owner_action
  - completed
  - archived

priority:
  - low
  - medium
  - high
  - critical

contract_status:
  - draft
  - signed
  - active
  - expiring
  - ended
  - canceled

deadline_type:
  - contract_end
  - renewal_notice
  - reply_due
  - submission_due
  - internal_check
  - other

risk_severity:
  - low
  - medium
  - high
  - critical

share_scope:
  - summary_only
  - selected_records
  - full_issue_view

rules:
  - legal_issue.status and contract_item.status are independent
  - deadline completion does not automatically close issue
  - share_scope never grants edit authority in current design
  - critical severity only marks urgency and is not a legal conclusion


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300000_SCHEMA_DESIGN_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# SCHEMA DESIGN INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

includes:
  - 0300300001_BUSINESS_LEGAL_SUPPORT_SCHEMA_DESIGN_OVERVIEW.md
  - 0300300002_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_CATALOG.md
  - 0300300003_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_DEFINITIONS.md
  - 0300300004_BUSINESS_LEGAL_SUPPORT_LOGICAL_COLUMN_STANDARD.md
  - 0300300005_BUSINESS_LEGAL_SUPPORT_LIFE_SCHEMA_BOUNDARY_POLICY.md
  - 0300300006_BUSINESS_LEGAL_SUPPORT_RETENTION_AND_SOFT_DELETE_POLICY.md
  - 0300300007_BUSINESS_LEGAL_SUPPORT_UNIQUE_KEY_AND_INDEX_POLICY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300001_BUSINESS_LEGAL_SUPPORT_SCHEMA_DESIGN_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SCHEMA DESIGN OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の life スキーマ前提の論理テーブル設計を固定する
  - 実装前にテーブル責務、主キー、関連、削除方針を明確化する
  - request / response exact payload 固定前の前提をそろえる

design_principles:
  - 正本スキーマは life
  - 事業法務相談整理の軽量アプリ責務に限定する
  - BusinessOS/ERP の正式統制モデルと競合しない
  - issue 中心で契約、期限、リスク、相談、添付を束ねる
  - 実装はまだ行わず、論理設計のみを固定する

naming_policy:
  schema:
    - life
  logical_table_prefix:
    - business_legal_
  key_policy:
    - 主キーは uuid 前提
    - 外部参照も uuid 前提


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300002_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_CATALOG.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT LOGICAL TABLE CATALOG
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

logical_tables:
  - table_name: life.business_legal_issue
    role:
      - 案件の主テーブル
  - table_name: life.business_legal_contract_item
    role:
      - 契約台帳
  - table_name: life.business_legal_deadline_record
    role:
      - 期限管理
  - table_name: life.business_legal_counterparty
    role:
      - 取引先/相手方整理
  - table_name: life.business_legal_risk_note
    role:
      - リスク記録
  - table_name: life.business_legal_consultation_record
    role:
      - 相談前後メモ
  - table_name: life.business_legal_attached_document
    role:
      - 添付文書メタ情報
  - table_name: life.business_legal_checklist_item
    role:
      - 相談前チェック項目
  - table_name: life.business_legal_trouble_timeline
    role:
      - 時系列記録
  - table_name: life.business_legal_advisor_share_record
    role:
      - advisor_viewer 共有履歴

out_of_scope_tables:
  - enterprise_approval
  - corporate_legal_repository
  - erp_official_processing
  - external_lawyer_master


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300003_BUSINESS_LEGAL_SUPPORT_LOGICAL_TABLE_DEFINITIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT LOGICAL TABLE DEFINITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

tables:

  life.business_legal_issue:
    primary_key:
      - issue_id
    required_columns:
      - issue_id
      - owner_user_id
      - title
      - issue_type
      - status
      - priority
      - summary
      - started_on
      - created_at
      - updated_at
    optional_columns:
      - next_action
      - archived_at
      - deleted_at
    notes:
      - 本アプリの中心集約単位
      - owner_user_id 単位で分離管理する

  life.business_legal_contract_item:
    primary_key:
      - contract_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
      - counterparty_id -> life.business_legal_counterparty.counterparty_id
    required_columns:
      - contract_id
      - issue_id
      - title
      - contract_type
      - status
      - created_at
      - updated_at
    optional_columns:
      - counterparty_id
      - signed_on
      - effective_from
      - effective_to
      - renewal_rule
      - auto_renew_flag
      - contract_amount
      - currency_code
      - deleted_at

  life.business_legal_deadline_record:
    primary_key:
      - deadline_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - deadline_id
      - issue_id
      - deadline_type
      - due_at
      - completed_flag
      - created_at
      - updated_at
    optional_columns:
      - related_type
      - related_id
      - alert_policy_code
      - completed_at
      - deleted_at

  life.business_legal_counterparty:
    primary_key:
      - counterparty_id
    required_columns:
      - counterparty_id
      - owner_user_id
      - name
      - counterparty_type
      - created_at
      - updated_at
    optional_columns:
      - country_code
      - contact_person
      - contact_note
      - relationship_note
      - risk_level
      - deleted_at

  life.business_legal_risk_note:
    primary_key:
      - risk_note_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - risk_note_id
      - issue_id
      - risk_category
      - severity
      - summary
      - created_at
      - updated_at
    optional_columns:
      - related_type
      - related_id
      - mitigation_note
      - last_reviewed_at
      - deleted_at

  life.business_legal_consultation_record:
    primary_key:
      - consultation_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - consultation_id
      - issue_id
      - consultation_purpose
      - memo
      - created_at
      - updated_at
    optional_columns:
      - question_list_text
      - result_note
      - next_check_items
      - consulted_at
      - deleted_at

  life.business_legal_attached_document:
    primary_key:
      - attachment_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - attachment_id
      - issue_id
      - file_name
      - file_kind
      - uploaded_at
    optional_columns:
      - related_type
      - related_id
      - storage_scope
      - note
      - deleted_at

  life.business_legal_checklist_item:
    primary_key:
      - checklist_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - checklist_id
      - issue_id
      - checklist_type
      - item_text
      - checked_flag
      - sort_order
      - created_at
      - updated_at
    optional_columns:
      - note
      - deleted_at

  life.business_legal_trouble_timeline:
    primary_key:
      - timeline_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - timeline_id
      - issue_id
      - occurred_at
      - event_type
      - summary
      - created_at
      - updated_at
    optional_columns:
      - note
      - evidence_attachment_count
      - deleted_at

  life.business_legal_advisor_share_record:
    primary_key:
      - share_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - share_id
      - issue_id
      - share_scope
      - shared_at
    optional_columns:
      - shared_to_label
      - revoked_at
      - note
      - deleted_at


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300004_BUSINESS_LEGAL_SUPPORT_LOGICAL_COLUMN_STANDARD.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT LOGICAL COLUMN STANDARD
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

column_standard:
  primary_id:
    - uuid
  owner_user_id:
    - uuid
  status:
    - varchar or enum-like constrained text
  priority:
    - varchar or enum-like constrained text
  title:
    - varchar(200) class logical size
  summary:
    - text
  memo:
    - text
  amount:
    - numeric class logical type
  currency_code:
    - varchar(3)
  due_at:
    - timestamptz class logical type
  date_only_fields:
    - date class logical type
  created_at:
    - timestamptz
  updated_at:
    - timestamptz
  deleted_at:
    - timestamptz nullable

timestamp_rule:
  - created_at は作成時必須
  - updated_at は更新時必須
  - deleted_at は論理削除時のみ使用

text_rule:
  - 長文は text
  - ラベル系は短い constrained text
  - 法的結論文の格納は対象外

ownership_rule:
  - すべて owner_user_id または issue_id 経由で owner に帰属する


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300005_BUSINESS_LEGAL_SUPPORT_LIFE_SCHEMA_BOUNDARY_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT LIFE SCHEMA BOUNDARY POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

schema_boundary:
  primary_schema:
    - life

rules:
  - 本アプリの正本データは life に置く
  - BusinessOS へ渡す場合も life 側の元データは維持する
  - ERP へ直接保存する前提は持たない
  - company-wide formal control data は本アプリの schema scope 外

not_allowed_assumptions:
  - life schema data equals enterprise legal truth
  - advisor share equals ownership transfer
  - app export equals official corporate archive


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300006_BUSINESS_LEGAL_SUPPORT_RETENTION_AND_SOFT_DELETE_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RETENTION AND SOFT DELETE POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

retention_policy:
  - 軽量相談記録であっても即物理削除は前提にしない
  - 基本は deleted_at による論理削除
  - archive と delete は意味を分ける

archive_rule:
  - archived_at は UI 上の現役一覧から外すための状態
  - deleted_at は論理削除であり通常表示から除外する

delete_rule:
  - 物理削除設計は今段階では固定しない
  - 子テーブルの削除も論理削除優先
  - share record は revocation と deleted_at を分けて扱う


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/030.schema/0300300007_BUSINESS_LEGAL_SUPPORT_UNIQUE_KEY_AND_INDEX_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT UNIQUE KEY AND INDEX POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

unique_key_policy:
  - primary key is uuid per table
  - business natural key uniqueness is minimized in this app
  - title uniqueness is not required
  - counterparty name uniqueness is not required

recommended_lookup_indexes:
  - business_legal_issue(owner_user_id, status, updated_at)
  - business_legal_contract_item(issue_id, status, effective_to)
  - business_legal_deadline_record(issue_id, due_at, completed_flag)
  - business_legal_counterparty(owner_user_id, name)
  - business_legal_risk_note(issue_id, severity)
  - business_legal_consultation_record(issue_id, consulted_at)
  - business_legal_trouble_timeline(issue_id, occurred_at)

index_policy_note:
  - これは実装 SQL ではなく論理推奨
  - exact index statement は実装段階で固定する


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/0300000_MODEL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# MODEL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 030.model
owner: Boss
prepared_by: Zero

includes:
  - 0300001_BUSINESS_LEGAL_SUPPORT_MODEL_OVERVIEW.md
  - 010.core/0300002_MODEL_CORE_INDEX.md
  - 010.core/0300003_MODEL_CORE_OVERVIEW.md
  - 010.core/0300004_BUSINESS_LEGAL_SUPPORT_DOMAIN_MODEL.md
  - 020.detail/0300200000_MODEL_DETAIL_INDEX.md
  - 030.schema/0300300000_SCHEMA_DESIGN_INDEX.md
  - 040.ddl-readiness/0300400000_DDL_READINESS_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/0300001_BUSINESS_LEGAL_SUPPORT_MODEL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT MODEL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 030.model
owner: Boss
prepared_by: Zero

layer_purpose:
  - モデルレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 事業法務案件の基本エンティティを定義する
  - 契約、期限、取引先、リスク、相談記録の関係を固定する
  - advisor_viewer は共有ビューとして扱う


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/040.ddl-readiness/0300400000_DDL_READINESS_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# DDL READINESS INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

includes:
  - 0300400001_BUSINESS_LEGAL_SUPPORT_DDL_READINESS_OVERVIEW.md
  - 0300400002_BUSINESS_LEGAL_SUPPORT_TABLE_CREATION_ORDER.md
  - 0300400003_BUSINESS_LEGAL_SUPPORT_KEY_AND_CONSTRAINT_POLICY.md
  - 0300400004_BUSINESS_LEGAL_SUPPORT_TIMESTAMP_AND_SOFT_DELETE_POLICY.md
  - 0300400005_BUSINESS_LEGAL_SUPPORT_INDEX_AND_SEARCH_POLICY.md
  - 0300400006_BUSINESS_LEGAL_SUPPORT_SQL_IMPLEMENTATION_BOUNDARY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/040.ddl-readiness/0300400001_BUSINESS_LEGAL_SUPPORT_DDL_READINESS_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DDL READINESS OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の DDL 実装前提を固定する
  - テーブル作成順、制約方針、監査列方針をそろえる
  - 実SQLに入る前の判断ぶれをなくす

principles:
  - 正本スキーマは life
  - DDL は app 専用の軽量責務に限定する
  - BusinessOS/ERP の正式統制DDLと競合しない
  - 論理削除を前提にする
  - exact SQL はまだ書かない

ddl_scope:
  in_scope:
    - table creation order
    - primary / foreign key policy
    - nullable policy
    - timestamp / soft delete policy
    - recommended index policy
  out_of_scope:
    - actual CREATE TABLE SQL
    - actual CREATE INDEX SQL
    - actual RLS SQL
    - trigger implementation


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/040.ddl-readiness/0300400002_BUSINESS_LEGAL_SUPPORT_TABLE_CREATION_ORDER.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT TABLE CREATION ORDER
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

creation_order:
  phase_1_root_tables:
    - life.business_legal_issue
    - life.business_legal_counterparty

  phase_2_child_tables:
    - life.business_legal_contract_item
    - life.business_legal_deadline_record
    - life.business_legal_risk_note
    - life.business_legal_consultation_record
    - life.business_legal_attached_document
    - life.business_legal_checklist_item
    - life.business_legal_trouble_timeline
    - life.business_legal_advisor_share_record

ordering_reason:
  - issue is the main parent table
  - counterparty is reusable across issues and contracts
  - all child tables depend on issue_id
  - contract_item additionally depends on counterparty_id when linked

future_safe_order:
  - create tables first
  - add foreign keys after base tables exist
  - add indexes after tables and keys
  - add RLS after basic CRUD verification


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/040.ddl-readiness/0300400003_BUSINESS_LEGAL_SUPPORT_KEY_AND_CONSTRAINT_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT KEY AND CONSTRAINT POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

primary_key_policy:
  - every table uses uuid primary key
  - key name stays explicit per table
  - no composite primary key in current design

foreign_key_policy:
  business_legal_contract_item:
    - issue_id references business_legal_issue.issue_id
    - counterparty_id references business_legal_counterparty.counterparty_id nullable
  business_legal_deadline_record:
    - issue_id references business_legal_issue.issue_id
  business_legal_risk_note:
    - issue_id references business_legal_issue.issue_id
  business_legal_consultation_record:
    - issue_id references business_legal_issue.issue_id
  business_legal_attached_document:
    - issue_id references business_legal_issue.issue_id
  business_legal_checklist_item:
    - issue_id references business_legal_issue.issue_id
  business_legal_trouble_timeline:
    - issue_id references business_legal_issue.issue_id
  business_legal_advisor_share_record:
    - issue_id references business_legal_issue.issue_id

constraint_policy:
  required_text_fields:
    - title
    - issue_type
    - status
    - priority
    - counterparty.name
    - deadline_type
  enum_like_fields_use:
    - constrained text or check-ready logical set
  nullable_by_design:
    - next_action
    - contract_amount
    - currency_code
    - contact_person
    - result_note
    - revoked_at
    - deleted_at

delete_behavior_policy:
  - child rows are not hard-cascade-deleted in current design
  - logical delete is preferred over physical cascade
  - foreign key behavior should support retention and auditability


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/040.ddl-readiness/0300400004_BUSINESS_LEGAL_SUPPORT_TIMESTAMP_AND_SOFT_DELETE_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT TIMESTAMP AND SOFT DELETE POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

timestamp_columns:
  standard_required:
    - created_at
    - updated_at
  conditional:
    - archived_at
    - completed_at
    - consulted_at
    - uploaded_at
    - revoked_at
    - last_reviewed_at
  soft_delete:
    - deleted_at

policy:
  - created_at required on insert
  - updated_at required on every update
  - deleted_at null means active from delete perspective
  - archived_at is visibility state, not delete state
  - completed_at applies only to completion-based records
  - revoked_at applies only to share revocation

application_rules:
  - archive and delete must not be conflated
  - default reads exclude deleted_at not null
  - owner archive views may include archived_at not null
  - advisor visibility must exclude deleted rows and revoked shares


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/040.ddl-readiness/0300400005_BUSINESS_LEGAL_SUPPORT_INDEX_AND_SEARCH_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INDEX AND SEARCH POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

recommended_indexes:
  business_legal_issue:
    - owner_user_id, status, updated_at
    - owner_user_id, issue_type, priority
  business_legal_contract_item:
    - issue_id, status, effective_to
    - counterparty_id, status
  business_legal_deadline_record:
    - issue_id, completed_flag, due_at
  business_legal_counterparty:
    - owner_user_id, name
  business_legal_risk_note:
    - issue_id, severity, risk_category
  business_legal_consultation_record:
    - issue_id, consulted_at
  business_legal_trouble_timeline:
    - issue_id, occurred_at
  business_legal_advisor_share_record:
    - issue_id, shared_at, revoked_at

search_policy:
  - keyword search starts from title and summary
  - long-form full text search is not fixed yet
  - search is owner-scoped by default
  - advisor search must stay inside shared scope only

notes:
  - this is logical index guidance only
  - actual index statement belongs to SQL phase


-------------------------------------------------------------------------------
SOURCE_FILE: 030.model/040.ddl-readiness/0300400006_BUSINESS_LEGAL_SUPPORT_SQL_IMPLEMENTATION_BOUNDARY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SQL IMPLEMENTATION BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 040.ddl-readiness
owner: Boss
prepared_by: Zero

current_phase_boundary:
  - this phase fixes DDL readiness only
  - actual SQL is intentionally deferred
  - RLS exact statements are intentionally deferred
  - trigger exact statements are intentionally deferred

next_sql_phase_inputs:
  - logical table catalog
  - logical table definitions
  - column standard
  - access control matrix
  - API payload exact contract

must_preserve_when_sql_starts:
  - schema stays life
  - owner is source controller
  - advisor_viewer stays read-only
  - soft delete remains first-class
  - ERP direct write stays out of scope


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/010.core/0400002_RUNTIME_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# RUNTIME CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0400003_RUNTIME_CORE_OVERVIEW.md
  - 0400004_BUSINESS_LEGAL_SUPPORT_RUNTIME_BEHAVIOR.md


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/010.core/0400003_RUNTIME_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# RUNTIME CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の ランタイム における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/010.core/0400004_BUSINESS_LEGAL_SUPPORT_RUNTIME_BEHAVIOR.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RUNTIME BEHAVIOR
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

runtime_events:
  - create_legal_issue
  - attach_document
  - register_deadline
  - update_risk_note
  - generate_consultation_summary
  - trigger_deadline_notification
  - launch_ai_support
  - share_advisor_summary

runtime_rules:
  - 通知は in_app を基本とする
  - 高リスクでも自動判断はしない
  - AI は整理支援時のみ動作する


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/020.detail/0400200000_RUNTIME_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# RUNTIME DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 040.runtime
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0400200001_BUSINESS_LEGAL_SUPPORT_RUNTIME_DETAIL_OVERVIEW.md
  - 0400200002_BUSINESS_LEGAL_SUPPORT_RUNTIME_EVENT_CHAIN.md
  - 0400200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_RUNTIME_RULES.md
  - 0400200004_BUSINESS_LEGAL_SUPPORT_SUMMARY_GENERATION_RUNTIME.md


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/020.detail/0400200001_BUSINESS_LEGAL_SUPPORT_RUNTIME_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RUNTIME DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 040.runtime
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - 実行時のイベント連鎖を詳細化する
  - 書き込み・通知・サマリー生成の順番を固定する
  - 実装前に runtime 前提をそろえる


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/020.detail/0400200002_BUSINESS_LEGAL_SUPPORT_RUNTIME_EVENT_CHAIN.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RUNTIME EVENT CHAIN
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 040.runtime
subfolder: 020.detail
owner: Boss
prepared_by: Zero

event_chain_examples:
  create_issue_flow:
    - owner creates legal_issue
    - optional contract_item creation
    - optional deadline_record creation
    - dashboard refresh candidate

  deadline_update_flow:
    - owner creates or updates deadline_record
    - reminder candidate set recalculated
    - issue detail deadline section refreshed

  consultation_prep_flow:
    - owner updates consultation_record
    - owner updates checklist items
    - summary generation becomes available

  share_flow:
    - owner generates summary
    - owner creates advisor share record
    - future advisor visibility opens in read-only scope


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/020.detail/0400200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_RUNTIME_RULES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT NOTIFICATION RUNTIME RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 040.runtime
subfolder: 020.detail
owner: Boss
prepared_by: Zero

notification_runtime:
  trigger_sources:
    - deadline_record
    - contract effective_to proximity
    - review cycle candidate
  suppression_rules:
    - deleted records never notify
    - revoked shares never notify advisor scope
    - archived issue does not imply zero notification automatically unless configured
  runtime_priority:
    - overdue first
    - due today second
    - near due third

note:
  - notifications are reminders only
  - notifications do not imply legal conclusion


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/020.detail/0400200004_BUSINESS_LEGAL_SUPPORT_SUMMARY_GENERATION_RUNTIME.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SUMMARY GENERATION RUNTIME
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 040.runtime
subfolder: 020.detail
owner: Boss
prepared_by: Zero

summary_runtime:
  input_sources:
    - legal_issue root
    - contract subset
    - deadline subset
    - risk_note subset
    - consultation_record
    - checklist items
    - timeline events
  output_character:
    - consultation support summary
    - owner oriented summary first
    - advisor share compatible summary second
  hard_rules:
    - no legal conclusion generation
    - no enterprise truth declaration
    - generated_at always attached


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/0400000_RUNTIME_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# RUNTIME INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 040.runtime
owner: Boss
prepared_by: Zero

includes:
  - 0400001_BUSINESS_LEGAL_SUPPORT_RUNTIME_OVERVIEW.md
  - 010.core/0400002_RUNTIME_CORE_INDEX.md
  - 010.core/0400003_RUNTIME_CORE_OVERVIEW.md
  - 010.core/0400004_BUSINESS_LEGAL_SUPPORT_RUNTIME_BEHAVIOR.md
  - 020.detail/0400200000_RUNTIME_DETAIL_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 040.runtime/0400001_BUSINESS_LEGAL_SUPPORT_RUNTIME_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RUNTIME OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 040.runtime
owner: Boss
prepared_by: Zero

layer_purpose:
  - ランタイムレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 日常利用時の動作原則を定義する
  - 期限通知、案件更新、共有出力の実行順を整理する
  - AI 支援の発火点を固定する


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/010.core/0500002_FLOW_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# FLOW CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0500003_FLOW_CORE_OVERVIEW.md
  - 0500004_BUSINESS_LEGAL_SUPPORT_USER_FLOW.md


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/010.core/0500003_FLOW_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# FLOW CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の フロー における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/010.core/0500004_BUSINESS_LEGAL_SUPPORT_USER_FLOW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT USER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

primary_flows:
  - issue_intake -> fact_memo -> contract_check -> deadline_register -> risk_note -> consultation_prep
  - issue_intake -> timeline_record -> evidence_attach -> summary_output
  - legal_case_review -> businessos_transfer_judgment -> explicit_bridge_to_businessos

flow_rules:
  - 最初に案件単位で受ける
  - 次に事実、期限、取引先、添付を埋める
  - 共有や橋渡しは最後に明示操作で行う


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/020.detail/0500200000_FLOW_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# FLOW DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0500200001_BUSINESS_LEGAL_SUPPORT_FLOW_DETAIL_OVERVIEW.md
  - 0500200002_BUSINESS_LEGAL_SUPPORT_CORE_USER_JOURNEYS.md
  - 0500200003_BUSINESS_LEGAL_SUPPORT_ISSUE_INTAKE_FLOW.md
  - 0500200004_BUSINESS_LEGAL_SUPPORT_BRIDGE_TRIGGER_FLOW.md


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/020.detail/0500200001_BUSINESS_LEGAL_SUPPORT_FLOW_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FLOW DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の主要導線を詳細化する
  - 相談前整理と橋渡し条件を分けて定義する
  - UI 導線固定前の基準をそろえる

flow_principles:
  - まず案件を作る
  - 次に事実、期限、契約、相手方を整理する
  - 共有や外部連携は最後に明示操作で行う


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/020.detail/0500200002_BUSINESS_LEGAL_SUPPORT_CORE_USER_JOURNEYS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CORE USER JOURNEYS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

journeys:

  contract_management:
    - create legal_issue
    - register contract_item
    - register deadline_record
    - add counterparty
    - attach contract file
    - review renewal notice timing

  trouble_response:
    - create legal_issue
    - add trouble_timeline
    - add evidence attachments
    - add risk_note
    - prepare consultation_record
    - generate summary output

  policy_review:
    - create legal_issue
    - classify as terms_and_policy
    - add checklist items
    - add risk_note
    - prepare next_check_items

  advisor_share:
    - finalize issue summary
    - select share scope
    - create advisor_share_record
    - confirm shared material


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/020.detail/0500200003_BUSINESS_LEGAL_SUPPORT_ISSUE_INTAKE_FLOW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ISSUE INTAKE FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

intake_steps:
  - choose issue_type
  - set title
  - write summary
  - set priority
  - decide whether contract exists
  - decide whether deadline exists
  - decide whether counterparty exists
  - save as active or draft

minimum_completion_rule:
  - title
  - issue_type
  - status
  - summary or next_action のどちらか一方

after_create_recommendations:
  - suggest contract_item if contract-related
  - suggest deadline_record if expiring or response-based
  - suggest checklist if consultation expected
  - suggest trouble_timeline if dispute-related


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/020.detail/0500200004_BUSINESS_LEGAL_SUPPORT_BRIDGE_TRIGGER_FLOW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT BRIDGE TRIGGER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

bridge_to_businessos_when:
  - company-wide formal review becomes necessary
  - approval workflow is required
  - multiple internal stakeholders must collaborate
  - official company repository is needed
  - continuous controlled operation is required

do_not_bridge_automatically:
  - this app remains owner-driven
  - bridge is explicit only
  - source data stays in life scope until user chooses bridge action

do_not_bridge_to_erp_directly:
  - ERP is not the direct next step from this app
  - official enterprise handling belongs outside this app


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/030.state-machine/0500300000_STATE_MACHINE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# STATE MACHINE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

includes:
  - 0500300001_BUSINESS_LEGAL_SUPPORT_STATE_MACHINE_OVERVIEW.md
  - 0500300002_BUSINESS_LEGAL_SUPPORT_ISSUE_STATE_TRANSITIONS.md
  - 0500300003_BUSINESS_LEGAL_SUPPORT_CONTRACT_STATUS_TRANSITIONS.md
  - 0500300004_BUSINESS_LEGAL_SUPPORT_DEADLINE_COMPLETION_TRANSITIONS.md
  - 0500300005_BUSINESS_LEGAL_SUPPORT_ADVISOR_SHARE_LIFECYCLE.md
  - 0500300006_BUSINESS_LEGAL_SUPPORT_INVALID_TRANSITION_POLICY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/030.state-machine/0500300001_BUSINESS_LEGAL_SUPPORT_STATE_MACHINE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT STATE MACHINE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の状態遷移を固定する
  - issue / contract / deadline / share の lifecycle を明文化する
  - 実装前に許可遷移と禁止遷移をそろえる

principles:
  - status 遷移は owner 主導
  - 自動遷移は最小限
  - deadline completion は issue close を自動化しない
  - share lifecycle は read-only 前提を崩さない
  - archive と delete は別概念として扱う

covered_objects:
  - legal_issue
  - contract_item
  - deadline_record
  - advisor_share_record


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/030.state-machine/0500300002_BUSINESS_LEGAL_SUPPORT_ISSUE_STATE_TRANSITIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ISSUE STATE TRANSITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

issue_status_set:
  - draft
  - active
  - waiting_external_reply
  - waiting_owner_action
  - completed
  - archived

allowed_transitions:

  draft:
    can_move_to:
      - active
      - archived

  active:
    can_move_to:
      - waiting_external_reply
      - waiting_owner_action
      - completed
      - archived

  waiting_external_reply:
    can_move_to:
      - active
      - waiting_owner_action
      - completed
      - archived

  waiting_owner_action:
    can_move_to:
      - active
      - waiting_external_reply
      - completed
      - archived

  completed:
    can_move_to:
      - active
      - archived

  archived:
    can_move_to:
      - active

transition_meaning:
  draft:
    - まだ整理途中
  active:
    - 現在対応中
  waiting_external_reply:
    - 相手方や外部返答待ち
  waiting_owner_action:
    - owner 側の次アクション待ち
  completed:
    - 一旦完了扱い
  archived:
    - 現役一覧から外した保管状態

important_rules:
  - completed is reversible
  - archived is reversible
  - deadline completion alone must not auto-set completed
  - issue delete is outside status transition and handled by soft delete


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/030.state-machine/0500300003_BUSINESS_LEGAL_SUPPORT_CONTRACT_STATUS_TRANSITIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CONTRACT STATUS TRANSITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

contract_status_set:
  - draft
  - signed
  - active
  - expiring
  - ended
  - canceled

allowed_transitions:

  draft:
    can_move_to:
      - signed
      - canceled

  signed:
    can_move_to:
      - active
      - canceled

  active:
    can_move_to:
      - expiring
      - ended
      - canceled

  expiring:
    can_move_to:
      - active
      - ended
      - canceled

  ended:
    can_move_to:
      - active

  canceled:
    can_move_to:
      - active

transition_rules:
  - signed means concluded but not necessarily in active period yet
  - active means effective and ongoing
  - expiring is warning-oriented state
  - ended means term finished
  - canceled means terminated before or outside normal term logic

automation_notes:
  - expiring may be suggested from effective_to proximity
  - expiring should not be forced without review
  - ended should not auto-close parent issue


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/030.state-machine/0500300004_BUSINESS_LEGAL_SUPPORT_DEADLINE_COMPLETION_TRANSITIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DEADLINE COMPLETION TRANSITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

deadline_state_model:
  managed_by_fields:
    - completed_flag
    - completed_at

logical_states:
  - pending
  - completed

state_rules:
  pending:
    condition:
      - completed_flag = false
      - completed_at = null

  completed:
    condition:
      - completed_flag = true
      - completed_at is not null

allowed_transitions:
  pending:
    can_move_to:
      - completed

  completed:
    can_move_to:
      - pending

reopen_rule:
  - if a completed deadline is reopened, completed_flag returns false and completed_at returns null

important_rules:
  - due_at past does not equal completed
  - completed deadline does not auto-complete issue
  - multiple deadlines on one issue may have mixed states


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/030.state-machine/0500300005_BUSINESS_LEGAL_SUPPORT_ADVISOR_SHARE_LIFECYCLE.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ADVISOR SHARE LIFECYCLE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

share_lifecycle_fields:
  - shared_at
  - revoked_at
  - share_scope

logical_states:
  - active_share
  - revoked_share

state_conditions:
  active_share:
    - shared_at is not null
    - revoked_at is null

  revoked_share:
    - shared_at is not null
    - revoked_at is not null

allowed_transitions:
  active_share:
    can_move_to:
      - revoked_share

  revoked_share:
    can_move_to:
      - active_share_by_new_record_only

rules:
  - revocation does not mutate original issue data
  - revocation removes future visibility
  - re-share should create a new share record instead of clearing revoked_at
  - share scope is frozen per share record
  - advisor_viewer never gains write permission through lifecycle changes


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/030.state-machine/0500300006_BUSINESS_LEGAL_SUPPORT_INVALID_TRANSITION_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INVALID TRANSITION POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

invalid_transition_examples:
  - draft -> completed without activation
  - archived -> completed directly
  - canceled -> signed directly
  - deadline pending -> pending no-op forced update
  - revoked_share -> active_share by mutating same record

handling_policy:
  - invalid transition returns conflict or validation_failed
  - no silent remapping of states
  - state transition must be explicit in update path
  - forbidden transitions must not be auto-corrected by backend

design_note:
  - state machine strictness reduces ambiguity in UI and API behavior
  - actual error code mapping is defined in API error policy documents


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/0500000_FLOW_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# FLOW INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 050.flow
owner: Boss
prepared_by: Zero

includes:
  - 0500001_BUSINESS_LEGAL_SUPPORT_FLOW_OVERVIEW.md
  - 010.core/0500002_FLOW_CORE_INDEX.md
  - 010.core/0500003_FLOW_CORE_OVERVIEW.md
  - 010.core/0500004_BUSINESS_LEGAL_SUPPORT_USER_FLOW.md
  - 020.detail/0500200000_FLOW_DETAIL_INDEX.md
  - 030.state-machine/0500300000_STATE_MACHINE_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 050.flow/0500001_BUSINESS_LEGAL_SUPPORT_FLOW_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FLOW OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 050.flow
owner: Boss
prepared_by: Zero

layer_purpose:
  - フローレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 主要利用導線を固定する
  - 相談前整理から共有までの流れを明文化する
  - BusinessOS/ERP 側へ渡す条件を整理する


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/010.core/0600002_INTEGRATION_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INTEGRATION CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 060.integration
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0600003_INTEGRATION_CORE_OVERVIEW.md
  - 0600004_BUSINESS_LEGAL_SUPPORT_INTEGRATION_BOUNDARY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/010.core/0600003_INTEGRATION_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# INTEGRATION CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 060.integration
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の 連携 における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/010.core/0600004_BUSINESS_LEGAL_SUPPORT_INTEGRATION_BOUNDARY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INTEGRATION BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 060.integration
subfolder: 010.core
owner: Boss
prepared_by: Zero

integration_targets:
  - LifePlanner
  - MoneyPlanner
  - PocketSecretary
  - BusinessOS
  - ERP

boundary_rules:
  - LifeOS 内は整理補助連携
  - BusinessOS/ERP へは明示橋渡し
  - ERP へは本アプリから自動送信しない
  - 外部専門家相談は出力資料経由を基本とする


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/020.detail/0600200000_INTEGRATION_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INTEGRATION DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0600200001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_DETAIL_OVERVIEW.md
  - 0600200002_BUSINESS_LEGAL_SUPPORT_BOUNDARY_MATRIX.md
  - 0600200003_BUSINESS_LEGAL_SUPPORT_HANDOFF_RULES.md


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/020.detail/0600200001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INTEGRATION DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - 連携境界を詳細に固定する
  - LifeOS 内連携と BusinessOS への橋渡し条件を明確化する
  - ERP 直結しない原則を明文化する


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/020.detail/0600200002_BUSINESS_LEGAL_SUPPORT_BOUNDARY_MATRIX.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT BOUNDARY MATRIX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 020.detail
owner: Boss
prepared_by: Zero

boundary_matrix:

  BusinessLegalSupport:
    owns:
      - owner-driven issue intake
      - lightweight contract ledger
      - consultation prep
      - deadline tracking
      - risk memo
    does_not_own:
      - enterprise approval
      - official corporate legal repository
      - ERP official processing

  LifePlanner:
    relation:
      - long-term life/business planning reference only
    transfer_mode:
      - summary link

  MoneyPlanner:
    relation:
      - contract amount and legal cost awareness
    transfer_mode:
      - note-level linkage only

  BusinessOS:
    relation:
      - formal company-side legal operation when needed
    transfer_mode:
      - explicit handoff only

  ERP:
    relation:
      - outside the scope of this app
    transfer_mode:
      - none from this app directly


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/020.detail/0600200003_BUSINESS_LEGAL_SUPPORT_HANDOFF_RULES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT HANDOFF RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 020.detail
owner: Boss
prepared_by: Zero

handoff_rules:
  - handoff must be user-triggered
  - handoff must declare destination
  - handoff must declare scope
  - handoff must never imply deletion of original life-side source
  - handoff summary should be generated before transfer decision

handoff_scope_examples:
  - summary_only
  - selected_records
  - issue_and_contracts
  - issue_full_bundle


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/030.api-contract/0600300000_API_CONTRACT_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# API CONTRACT INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

includes:
  - 0600300001_BUSINESS_LEGAL_SUPPORT_API_CONTRACT_OVERVIEW.md
  - 0600300002_BUSINESS_LEGAL_SUPPORT_ENDPOINT_CATALOG.md
  - 0600300003_BUSINESS_LEGAL_SUPPORT_WRITE_ENDPOINT_CONTRACT.md
  - 0600300004_BUSINESS_LEGAL_SUPPORT_READ_AND_LIST_ENDPOINT_CONTRACT.md
  - 0600300005_BUSINESS_LEGAL_SUPPORT_SUMMARY_SHARE_HANDOFF_ENDPOINT_CONTRACT.md
  - 0600300006_BUSINESS_LEGAL_SUPPORT_ERROR_AND_RESPONSE_ENVELOPE_POLICY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/030.api-contract/0600300001_BUSINESS_LEGAL_SUPPORT_API_CONTRACT_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT API CONTRACT OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の API contract を固定する
  - payload 設計と endpoint 設計を対応づける
  - 実装前に path, method, request, response の形をそろえる

api_principles:
  - 正本スキーマは life
  - API は owner-driven application contract とする
  - enterprise control API は対象外
  - ERP direct API は定義しない
  - advisor access is read-only future scope
  - response は JSON object を基本とする
  - list は items 配列を返す
  - soft delete を前提にする

base_path:
  - /api/life/business-legal-support/v1

authentication_assumption:
  - authenticated owner required
  - advisor_viewer 用 API は将来拡張扱い


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/030.api-contract/0600300002_BUSINESS_LEGAL_SUPPORT_ENDPOINT_CATALOG.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ENDPOINT CATALOG
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

endpoint_catalog:

  legal_issue:
    - POST /api/life/business-legal-support/v1/legal-issues
    - GET /api/life/business-legal-support/v1/legal-issues
    - GET /api/life/business-legal-support/v1/legal-issues/{issue_id}
    - PATCH /api/life/business-legal-support/v1/legal-issues/{issue_id}
    - POST /api/life/business-legal-support/v1/legal-issues/{issue_id}/archive
    - POST /api/life/business-legal-support/v1/legal-issues/{issue_id}/soft-delete

  contract_item:
    - POST /api/life/business-legal-support/v1/contracts
    - GET /api/life/business-legal-support/v1/contracts
    - GET /api/life/business-legal-support/v1/contracts/{contract_id}
    - PATCH /api/life/business-legal-support/v1/contracts/{contract_id}

  deadline_record:
    - POST /api/life/business-legal-support/v1/deadlines
    - GET /api/life/business-legal-support/v1/deadlines
    - PATCH /api/life/business-legal-support/v1/deadlines/{deadline_id}

  counterparty:
    - POST /api/life/business-legal-support/v1/counterparties
    - GET /api/life/business-legal-support/v1/counterparties
    - GET /api/life/business-legal-support/v1/counterparties/{counterparty_id}
    - PATCH /api/life/business-legal-support/v1/counterparties/{counterparty_id}

  risk_note:
    - POST /api/life/business-legal-support/v1/risk-notes
    - GET /api/life/business-legal-support/v1/risk-notes
    - PATCH /api/life/business-legal-support/v1/risk-notes/{risk_note_id}

  consultation_record:
    - POST /api/life/business-legal-support/v1/consultations
    - GET /api/life/business-legal-support/v1/consultations
    - PATCH /api/life/business-legal-support/v1/consultations/{consultation_id}

  checklist_item:
    - POST /api/life/business-legal-support/v1/checklists
    - GET /api/life/business-legal-support/v1/checklists
    - PATCH /api/life/business-legal-support/v1/checklists/{checklist_id}

  trouble_timeline:
    - POST /api/life/business-legal-support/v1/timeline-events
    - GET /api/life/business-legal-support/v1/timeline-events
    - PATCH /api/life/business-legal-support/v1/timeline-events/{timeline_id}

  summary_share_handoff:
    - POST /api/life/business-legal-support/v1/summaries/generate
    - POST /api/life/business-legal-support/v1/shares
    - POST /api/life/business-legal-support/v1/handoffs/businessos-draft

not_defined:
  - ERP direct endpoints
  - enterprise approval endpoints
  - formal legal opinion endpoints


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/030.api-contract/0600300003_BUSINESS_LEGAL_SUPPORT_WRITE_ENDPOINT_CONTRACT.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT WRITE ENDPOINT CONTRACT
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

write_endpoints:

  create_legal_issue:
    method: POST
    path: /api/life/business-legal-support/v1/legal-issues
    request_source:
      - create_legal_issue_request
    response_source:
      - create_legal_issue_response

  update_legal_issue:
    method: PATCH
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}
    path_params:
      - issue_id
    request_source:
      - update_legal_issue_request
    response_source:
      - update_legal_issue_response

  archive_legal_issue:
    method: POST
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}/archive
    path_params:
      - issue_id
    request_shape:
      json: |
        {
          "issue_id": "11111111-2222-3333-4444-555555555555"
        }
    response_shape:
      json: |
        {
          "issue_id": "11111111-2222-3333-4444-555555555555",
          "archived_at": "2026-04-14T12:10:00+09:00"
        }

  soft_delete_legal_issue:
    method: POST
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}/soft-delete
    path_params:
      - issue_id
    request_source:
      - soft_delete_legal_issue_request
    response_source:
      - soft_delete_legal_issue_response

  create_contract_item:
    method: POST
    path: /api/life/business-legal-support/v1/contracts
    request_source:
      - create_contract_item_request
    response_source:
      - create_contract_item_response

  create_deadline_record:
    method: POST
    path: /api/life/business-legal-support/v1/deadlines
    request_source:
      - create_deadline_record_request
    response_source:
      - create_deadline_record_response

  create_counterparty:
    method: POST
    path: /api/life/business-legal-support/v1/counterparties
    request_source:
      - create_counterparty_request
    response_source:
      - create_counterparty_response

  create_risk_note:
    method: POST
    path: /api/life/business-legal-support/v1/risk-notes
    request_source:
      - create_risk_note_request
    response_source:
      - create_risk_note_response

  create_consultation_record:
    method: POST
    path: /api/life/business-legal-support/v1/consultations
    request_source:
      - create_consultation_record_request
    response_source:
      - create_consultation_record_response

  create_checklist_item:
    method: POST
    path: /api/life/business-legal-support/v1/checklists
    request_source:
      - create_checklist_item_request
    response_source:
      - create_checklist_item_response

  create_timeline_event:
    method: POST
    path: /api/life/business-legal-support/v1/timeline-events
    request_source:
      - create_trouble_timeline_request
    response_source:
      - create_trouble_timeline_response

write_rules:
  - POST creates new resource
  - PATCH updates partial fields only
  - PATCH request omits untouched fields
  - path id and body id must not conflict
  - owner must own parent issue for child creation


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/030.api-contract/0600300004_BUSINESS_LEGAL_SUPPORT_READ_AND_LIST_ENDPOINT_CONTRACT.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT READ AND LIST ENDPOINT CONTRACT
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

read_endpoints:

  list_legal_issues:
    method: GET
    path: /api/life/business-legal-support/v1/legal-issues
    query_params:
      - status
      - issue_type
      - priority
      - keyword
      - page
      - page_size
    request_source:
      - list_legal_issues_request
    response_source:
      - list_legal_issues_response

  get_legal_issue:
    method: GET
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}
    path_params:
      - issue_id
    response_source:
      - get_legal_issue_response

  list_deadline_records:
    method: GET
    path: /api/life/business-legal-support/v1/deadlines
    query_params:
      - issue_id
      - completed_flag
      - date_from
      - date_to
    request_source:
      - list_deadline_records_request
    response_source:
      - list_deadline_records_response

  list_contract_items:
    method: GET
    path: /api/life/business-legal-support/v1/contracts
    query_params:
      - issue_id
      - status
      - contract_type
      - keyword
    response_shape:
      json: |
        {
          "items": [
            {
              "contract_id": "c1111111-2222-3333-4444-555555555555",
              "issue_id": "11111111-2222-3333-4444-555555555555",
              "title": "株式会社A 業務委託契約",
              "contract_type": "service_agreement",
              "effective_to": "2027-03-31",
              "auto_renew_flag": true,
              "amount_value": "120000.00",
              "currency_code": "JPY",
              "status": "active"
            }
          ]
        }

  get_contract_item:
    method: GET
    path: /api/life/business-legal-support/v1/contracts/{contract_id}
    path_params:
      - contract_id
    response_source:
      - create_contract_item_response

  list_counterparties:
    method: GET
    path: /api/life/business-legal-support/v1/counterparties
    query_params:
      - keyword
      - counterparty_type
      - risk_level
    response_shape:
      json: |
        {
          "items": [
            {
              "counterparty_id": "99999999-8888-7777-6666-555555555555",
              "name": "株式会社A",
              "counterparty_type": "client_company",
              "country_code": "JP",
              "contact_person": "山田太郎",
              "risk_level": "medium"
            }
          ]
        }

read_rules:
  - GET never changes state
  - list response always returns items array
  - missing resource returns not_found error envelope
  - soft deleted resource is hidden from default read


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/030.api-contract/0600300005_BUSINESS_LEGAL_SUPPORT_SUMMARY_SHARE_HANDOFF_ENDPOINT_CONTRACT.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SUMMARY SHARE HANDOFF ENDPOINT CONTRACT
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

special_endpoints:

  generate_issue_summary:
    method: POST
    path: /api/life/business-legal-support/v1/summaries/generate
    request_source:
      - generate_issue_summary_request
    response_source:
      - generate_issue_summary_response

  create_advisor_share_record:
    method: POST
    path: /api/life/business-legal-support/v1/shares
    request_source:
      - create_advisor_share_record_request
    response_source:
      - create_advisor_share_record_response

  revoke_advisor_share_record:
    method: POST
    path: /api/life/business-legal-support/v1/shares/{share_id}/revoke
    path_params:
      - share_id
    request_shape:
      json: |
        {
          "share_id": "s1111111-2222-3333-4444-555555555555"
        }
    response_shape:
      json: |
        {
          "share_id": "s1111111-2222-3333-4444-555555555555",
          "revoked_at": "2026-04-14T12:20:00+09:00"
        }

  create_businessos_handoff_draft:
    method: POST
    path: /api/life/business-legal-support/v1/handoffs/businessos-draft
    request_source:
      - create_businessos_handoff_draft_request
    response_source:
      - create_businessos_handoff_draft_response

special_rules:
  - summary generation is explicit only
  - share creation is explicit only
  - share revoke removes future visibility
  - BusinessOS handoff draft does not write to ERP
  - handoff draft is not final transfer execution


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/030.api-contract/0600300006_BUSINESS_LEGAL_SUPPORT_ERROR_AND_RESPONSE_ENVELOPE_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ERROR AND RESPONSE ENVELOPE POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

success_response_policy:
  - resource responses may return plain resource object
  - list responses return object with items
  - envelope forcing is not mandatory at this design stage

error_response_shape:
  json: |
    {
      "error": {
        "code": "not_found",
        "message": "Legal issue not found.",
        "details": null
      }
    }

standard_error_codes:
  - invalid_request
  - unauthorized
  - forbidden
  - not_found
  - conflict
  - validation_failed
  - soft_deleted
  - share_scope_invalid

usage_rules:
  - not_found for missing or inaccessible resource in default read paths
  - forbidden for valid auth but disallowed action
  - validation_failed for field rule violations
  - conflict for incompatible state transitions
  - soft_deleted may be used only when explicit deleted-resource handling is needed

validation_examples:
  - title missing on create_legal_issue
  - due_at missing on create_deadline_record
  - share_scope missing on create_advisor_share_record
  - issue_id not owned by current user


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/0600000_INTEGRATION_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INTEGRATION INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 060.integration
owner: Boss
prepared_by: Zero

includes:
  - 0600001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_OVERVIEW.md
  - 010.core/0600002_INTEGRATION_CORE_INDEX.md
  - 010.core/0600003_INTEGRATION_CORE_OVERVIEW.md
  - 010.core/0600004_BUSINESS_LEGAL_SUPPORT_INTEGRATION_BOUNDARY.md
  - 020.detail/0600200000_INTEGRATION_DETAIL_INDEX.md
  - 030.api-contract/0600300000_API_CONTRACT_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 060.integration/0600001_BUSINESS_LEGAL_SUPPORT_INTEGRATION_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INTEGRATION OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 060.integration
owner: Boss
prepared_by: Zero

layer_purpose:
  - 連携レイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - LifeOS 内連携と外部境界を定義する
  - BusinessOS / ERP との線引きを固定する
  - 自動送信禁止を明確化する


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/010.core/0700002_OPERATIONS_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# OPERATIONS CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 070.operations
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0700003_OPERATIONS_CORE_OVERVIEW.md
  - 0700004_BUSINESS_LEGAL_SUPPORT_OPERATIONS_GUIDE.md


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/010.core/0700003_OPERATIONS_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# OPERATIONS CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 070.operations
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の 運用 における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/010.core/0700004_BUSINESS_LEGAL_SUPPORT_OPERATIONS_GUIDE.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT OPERATIONS GUIDE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 070.operations
subfolder: 010.core
owner: Boss
prepared_by: Zero

operations:
  daily:
    - 新規相談メモ確認
    - 期限近接確認
  weekly:
    - リスクメモ見直し
    - 取引先別案件確認
  monthly:
    - 契約更新候補確認
    - 顧問相談前まとめ確認

ops_rules:
  - 運用は owner 主体
  - advisor_viewer は許可範囲閲覧
  - 人間サポートは持たず AI チャットのみ


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/020.detail/0700200000_OPERATIONS_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# OPERATIONS DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0700200001_BUSINESS_LEGAL_SUPPORT_OPERATIONS_DETAIL_OVERVIEW.md
  - 0700200002_BUSINESS_LEGAL_SUPPORT_OPERATING_RHYTHM.md
  - 0700200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_AND_REVIEW_POLICY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/020.detail/0700200001_BUSINESS_LEGAL_SUPPORT_OPERATIONS_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT OPERATIONS DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - owner の日常運用リズムを詳細化する
  - 期限見直しと相談前整理を習慣化する
  - advisor_viewer 共有の扱いを運用面で固定する


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/020.detail/0700200002_BUSINESS_LEGAL_SUPPORT_OPERATING_RHYTHM.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT OPERATING RHYTHM
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 020.detail
owner: Boss
prepared_by: Zero

rhythm:
  daily:
    - near deadlines check
    - urgent issue review
  weekly:
    - risk_note review
    - consultation prep review
    - counterparty issue grouping check
  monthly:
    - contract expiry check
    - advisor share necessity check
    - archive candidate check

operation_rule:
  - daily operation stays lightweight
  - weekly review is the main maintenance unit
  - monthly review is for structural cleanup


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/020.detail/0700200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_AND_REVIEW_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT NOTIFICATION AND REVIEW POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 020.detail
owner: Boss
prepared_by: Zero

notification_defaults:
  - contract_end_30d
  - contract_end_7d
  - reply_due_3d
  - due_today

review_policy:
  - reminders are guidance only
  - reminders do not imply legal conclusion
  - high severity risk_note can strengthen attention but not auto-close or auto-share


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/030.runbook/0700300000_RUNBOOK_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# RUNBOOK INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 030.runbook
owner: Boss
prepared_by: Zero

includes:
  - 0700300001_BUSINESS_LEGAL_SUPPORT_RUNBOOK_OVERVIEW.md
  - 0700300002_BUSINESS_LEGAL_SUPPORT_DAILY_WEEKLY_MONTHLY_RUNBOOK.md
  - 0700300003_BUSINESS_LEGAL_SUPPORT_ISSUE_CLEANUP_RUNBOOK.md


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/030.runbook/0700300001_BUSINESS_LEGAL_SUPPORT_RUNBOOK_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RUNBOOK OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 030.runbook
owner: Boss
prepared_by: Zero

purpose:
  - owner の日常運用を runbook 化する
  - 継続利用時に迷わない確認順を固定する
  - アーカイブや見直しの判断軸をそろえる


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/030.runbook/0700300002_BUSINESS_LEGAL_SUPPORT_DAILY_WEEKLY_MONTHLY_RUNBOOK.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DAILY WEEKLY MONTHLY RUNBOOK
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 030.runbook
owner: Boss
prepared_by: Zero

daily:
  - check overdue deadlines
  - check due today deadlines
  - check top priority active issues

weekly:
  - review consultation prep candidates
  - review expiring contracts
  - review unresolved risk notes
  - update next_action where stale

monthly:
  - archive completed stale issues
  - check counterparty duplicates
  - check summary/share necessity
  - review whether BusinessOS handoff is needed


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/030.runbook/0700300003_BUSINESS_LEGAL_SUPPORT_ISSUE_CLEANUP_RUNBOOK.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ISSUE CLEANUP RUNBOOK
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 030.runbook
owner: Boss
prepared_by: Zero

cleanup_runbook:
  step_1:
    - find completed issues older than chosen threshold
  step_2:
    - confirm no near deadline remains
  step_3:
    - confirm no active share should remain
  step_4:
    - archive instead of delete by default
  step_5:
    - soft delete only when owner explicitly decides

cleanup_principles:
  - archive first
  - delete later if truly unnecessary
  - preserve consultation support trace as long as reasonable


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/0700000_OPERATIONS_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# OPERATIONS INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 070.operations
owner: Boss
prepared_by: Zero

includes:
  - 0700001_BUSINESS_LEGAL_SUPPORT_OPERATIONS_OVERVIEW.md
  - 010.core/0700002_OPERATIONS_CORE_INDEX.md
  - 010.core/0700003_OPERATIONS_CORE_OVERVIEW.md
  - 010.core/0700004_BUSINESS_LEGAL_SUPPORT_OPERATIONS_GUIDE.md
  - 020.detail/0700200000_OPERATIONS_DETAIL_INDEX.md
  - 030.runbook/0700300000_RUNBOOK_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 070.operations/0700001_BUSINESS_LEGAL_SUPPORT_OPERATIONS_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT OPERATIONS OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 070.operations
owner: Boss
prepared_by: Zero

layer_purpose:
  - 運用レイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 個人事業/小規模事業の継続運用ルールを定義する
  - 通知、見直し、共有タイミングを整理する
  - 顧問相談前整理を含める


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/010.core/0800002_POLICY_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# POLICY CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 080.policy
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0800003_POLICY_CORE_OVERVIEW.md
  - 0800004_BUSINESS_LEGAL_SUPPORT_POLICY_SET.md


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/010.core/0800003_POLICY_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# POLICY CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 080.policy
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の ポリシー における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/010.core/0800004_BUSINESS_LEGAL_SUPPORT_POLICY_SET.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT POLICY SET
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 080.policy
subfolder: 010.core
owner: Boss
prepared_by: Zero

policies:
  legal_boundary:
    - 法的助言の代替ではない
    - 最終判断は本人または専門家
  sharing:
    - advisor_viewer 共有は許可ベース
    - 不要な自動共有をしない
  ai:
    - 論点整理のみ
    - 断定表現を禁止する
  export:
    - 正式意見書出力を行わない
    - 正式統制資料の正本にはしない


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/020.detail/0800200000_POLICY_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# POLICY DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0800200001_BUSINESS_LEGAL_SUPPORT_POLICY_DETAIL_OVERVIEW.md
  - 0800200002_BUSINESS_LEGAL_SUPPORT_AI_LEGAL_BOUNDARY_POLICY.md
  - 0800200003_BUSINESS_LEGAL_SUPPORT_SHARING_AND_EXPORT_POLICY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/020.detail/0800200001_BUSINESS_LEGAL_SUPPORT_POLICY_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT POLICY DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - 法的助言非代替を詳細ポリシーで固定する
  - 共有と出力の制御条件を明確化する
  - UI 文言や AI 応答の基準をそろえる


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/020.detail/0800200002_BUSINESS_LEGAL_SUPPORT_AI_LEGAL_BOUNDARY_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT AI LEGAL BOUNDARY POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 020.detail
owner: Boss
prepared_by: Zero

allowed:
  - issue summarization
  - contract review viewpoint suggestions
  - deadline reminder support
  - consultation question draft
  - counterparty memo organization

prohibited:
  - legal conclusion statement
  - unlawful_or_lawful final judgment
  - pretending to be a lawyer
  - litigation odds statement
  - proxy negotiation wording

ui_requirement:
  - legal advice disclaimer must remain visible in key consultation surfaces


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/020.detail/0800200003_BUSINESS_LEGAL_SUPPORT_SHARING_AND_EXPORT_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SHARING AND EXPORT POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 020.detail
owner: Boss
prepared_by: Zero

sharing_policy:
  - default is private
  - advisor_viewer is read-only
  - share scope must be selected explicitly
  - share can be revoked

export_policy:
  - export is consultation support output only
  - export is not a formal legal opinion
  - export is not an enterprise legal record of truth
  - export should prioritize summary over raw dump by default


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/030.pricing-and-disclaimer/0800300000_PRICING_AND_DISCLAIMER_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# PRICING AND DISCLAIMER INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 030.pricing-and-disclaimer
owner: Boss
prepared_by: Zero

includes:
  - 0800300001_BUSINESS_LEGAL_SUPPORT_PRICING_POLICY.md
  - 0800300002_BUSINESS_LEGAL_SUPPORT_FEATURE_TIER_POLICY.md
  - 0800300003_BUSINESS_LEGAL_SUPPORT_DISCLAIMER_TEXT_POLICY.md


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/030.pricing-and-disclaimer/0800300001_BUSINESS_LEGAL_SUPPORT_PRICING_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT PRICING POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 030.pricing-and-disclaimer
owner: Boss
prepared_by: Zero

pricing_policy:
  billing_model:
    - 月額利用型アプリ

plans:
  free:
    price_jpy_per_month: 0
  standard:
    price_jpy_per_month: 500
  bridge:
    price_jpy_per_month: 900

pricing_positioning:
  - free は入口
  - standard が主力
  - bridge は BusinessOS 橋渡しや共有整理が多い人向け


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/030.pricing-and-disclaimer/0800300002_BUSINESS_LEGAL_SUPPORT_FEATURE_TIER_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FEATURE TIER POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 030.pricing-and-disclaimer
owner: Boss
prepared_by: Zero

tier_policy:
  free:
    includes:
      - issue creation
      - contract list
      - deadline tracking
      - consultation memo
      - risk memo
      - limited attachment
  standard:
    includes:
      - full issue management
      - templates
      - timeline
      - checklist
      - summary output
      - AI support
  bridge:
    includes:
      - standard all
      - stronger share flow
      - BusinessOS handoff draft
      - cross-issue search
      - heavier reminder handling

hard_rule:
  - no plan includes human legal support
  - support remains AI chat only


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/030.pricing-and-disclaimer/0800300003_BUSINESS_LEGAL_SUPPORT_DISCLAIMER_TEXT_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DISCLAIMER TEXT POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 030.pricing-and-disclaimer
owner: Boss
prepared_by: Zero

required_disclaimer_text_policy:
  always_visible_in_key_surfaces:
    - 本アプリは法的助言の代替ではありません
    - 最終判断は本人または有資格専門家が行ってください

required_surfaces:
  - consultation_prep
  - summary_output
  - advisor_share_view
  - AI support surface

prohibited_impressions:
  - lawyer replacement
  - formal legal opinion generation
  - enterprise legal truth confirmation


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/0800000_POLICY_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# POLICY INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 080.policy
owner: Boss
prepared_by: Zero

includes:
  - 0800001_BUSINESS_LEGAL_SUPPORT_POLICY_OVERVIEW.md
  - 010.core/0800002_POLICY_CORE_INDEX.md
  - 010.core/0800003_POLICY_CORE_OVERVIEW.md
  - 010.core/0800004_BUSINESS_LEGAL_SUPPORT_POLICY_SET.md
  - 020.detail/0800200000_POLICY_DETAIL_INDEX.md
  - 030.pricing-and-disclaimer/0800300000_PRICING_AND_DISCLAIMER_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 080.policy/0800001_BUSINESS_LEGAL_SUPPORT_POLICY_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT POLICY OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 080.policy
owner: Boss
prepared_by: Zero

layer_purpose:
  - ポリシーレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 法的助言非代替、共有制御、通知制御のポリシーを定義する
  - AI 利用時の制限を固定する
  - LifeOS寄りアプリとしての倫理境界を持つ


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/010.core/0900002_INTERFACE_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INTERFACE CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 0900003_INTERFACE_CORE_OVERVIEW.md
  - 0900004_BUSINESS_LEGAL_SUPPORT_INTERFACE_SPEC.md


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/010.core/0900003_INTERFACE_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# INTERFACE CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の インターフェース における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/010.core/0900004_BUSINESS_LEGAL_SUPPORT_INTERFACE_SPEC.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INTERFACE SPEC
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

screens:
  - dashboard
  - legal_issue_list
  - legal_issue_detail
  - contract_list
  - deadline_list
  - consultation_prep
  - summary_output
  - advisor_share_view
  - settings

ui_rules:
  - 案件中心ナビゲーション
  - 期限強調
  - リスクは色ではなくラベルでも表現
  - 法的助言ではない表示を常設


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/020.detail/0900200000_INTERFACE_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INTERFACE DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 0900200001_BUSINESS_LEGAL_SUPPORT_INTERFACE_DETAIL_OVERVIEW.md
  - 0900200002_BUSINESS_LEGAL_SUPPORT_SCREEN_CATALOG.md
  - 0900200003_BUSINESS_LEGAL_SUPPORT_SCREEN_TRANSITION_RULES.md
  - 0900200004_BUSINESS_LEGAL_SUPPORT_LIST_AND_DETAIL_PRESENTATION_RULES.md


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/020.detail/0900200001_BUSINESS_LEGAL_SUPPORT_INTERFACE_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INTERFACE DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - 画面群の責務を詳細化する
  - 一覧、詳細、準備、共有のUI役割を固定する
  - 画面遷移と表示粒度の基準をそろえる


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/020.detail/0900200002_BUSINESS_LEGAL_SUPPORT_SCREEN_CATALOG.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SCREEN CATALOG
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 020.detail
owner: Boss
prepared_by: Zero

screen_catalog:
  - dashboard
  - legal_issue_list
  - legal_issue_detail
  - contract_list
  - contract_detail
  - deadline_list
  - counterparty_list
  - counterparty_detail
  - consultation_prep
  - summary_output
  - advisor_share_view
  - settings

dashboard_focus:
  - urgent deadlines
  - high priority issues
  - expiring contracts
  - consultation prep candidates


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/020.detail/0900200003_BUSINESS_LEGAL_SUPPORT_SCREEN_TRANSITION_RULES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SCREEN TRANSITION RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 020.detail
owner: Boss
prepared_by: Zero

primary_transitions:
  - dashboard -> legal_issue_list
  - legal_issue_list -> legal_issue_detail
  - legal_issue_detail -> contract_detail
  - legal_issue_detail -> deadline_list
  - legal_issue_detail -> consultation_prep
  - consultation_prep -> summary_output
  - legal_issue_detail -> advisor_share_view

rules:
  - issue detail is the main hub
  - contract and deadline views can be entered globally or from issue detail
  - summary output is produced from explicit user action only
  - advisor share screen is never auto-opened


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/020.detail/0900200004_BUSINESS_LEGAL_SUPPORT_LIST_AND_DETAIL_PRESENTATION_RULES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT LIST AND DETAIL PRESENTATION RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 020.detail
owner: Boss
prepared_by: Zero

list_rules:
  - list screens show status, priority, and due hint first
  - list screens should avoid dense legal text
  - expired or near-due items must be surfaced clearly

detail_rules:
  - issue detail is section-based
  - contract, deadline, risk, counterparty, attachment, consultation sections are separate
  - legal advice disclaimer remains visible around consultation-related sections

presentation_rules:
  - severity is shown by label, not by color only
  - summary first, raw notes second
  - share/export actions are secondary actions, not primary default buttons


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/030.screen-fields/0900300000_SCREEN_FIELD_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# SCREEN FIELD INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

includes:
  - 0900300001_BUSINESS_LEGAL_SUPPORT_SCREEN_FIELD_OVERVIEW.md
  - 0900300002_BUSINESS_LEGAL_SUPPORT_DASHBOARD_SCREEN_FIELDS.md
  - 0900300003_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_LIST_AND_DETAIL_FIELDS.md
  - 0900300004_BUSINESS_LEGAL_SUPPORT_CONTRACT_AND_DEADLINE_SCREEN_FIELDS.md
  - 0900300005_BUSINESS_LEGAL_SUPPORT_CONSULTATION_AND_SHARE_SCREEN_FIELDS.md


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/030.screen-fields/0900300001_BUSINESS_LEGAL_SUPPORT_SCREEN_FIELD_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SCREEN FIELD OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の画面項目を固定する
  - payload 設計と UI 表示項目を対応づける
  - 実装前に一覧画面、詳細画面、相談準備画面の粒度を確定する

screen_design_principles:
  - issue detail を主ハブ画面にする
  - dashboard は「今見るべきもの」を優先表示する
  - list は短く、detail は section 分割する
  - share/export は主導線ではなく副導線に置く
  - 法的助言ではない表示を相談系画面で維持する

field_presentation_rules:
  - status, priority, due hint は一覧で先頭優先
  - 長文メモは一覧に全文出さない
  - severity は色だけでなくラベルでも示す
  - 金額は amount_value + currency_code で表示する


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/030.screen-fields/0900300002_BUSINESS_LEGAL_SUPPORT_DASHBOARD_SCREEN_FIELDS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DASHBOARD SCREEN FIELDS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

screen_id:
  - dashboard

primary_sections:

  urgent_deadlines_card:
    fields:
      - deadline_type
      - due_at
      - related_issue_title
      - related_contract_title
      - completed_flag
    source_payload:
      - list_deadline_records_response.items[]

  active_issue_summary_card:
    fields:
      - issue_id
      - title
      - issue_type
      - status
      - priority
      - next_action
      - updated_at
    source_payload:
      - list_legal_issues_response.items[]

  expiring_contracts_card:
    fields:
      - contract_id
      - title
      - contract_type
      - effective_to
      - auto_renew_flag
      - status
      - counterparty_name
    source_payload:
      - contract list payload derived view

  consultation_prep_candidates_card:
    fields:
      - issue_id
      - title
      - priority
      - unresolved_checklist_count
      - unresolved_risk_count
    source_payload:
      - get_legal_issue_response.child_counts
      - issue summary derived view

actions:
  primary:
    - create_new_issue
  secondary:
    - open_issue_list
    - open_deadline_list
    - open_contract_list

dashboard_rules:
  - 期限切れ or 直近期限は最上段
  - dashboard で長文本文は見せない
  - share/export ボタンは dashboard には置かない


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/030.screen-fields/0900300003_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_LIST_AND_DETAIL_FIELDS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT LEGAL ISSUE LIST AND DETAIL FIELDS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

screen_id:
  - legal_issue_list
  - legal_issue_detail

legal_issue_list:
  filters:
    - status
    - issue_type
    - priority
    - keyword
  columns_or_cards:
    - title
    - issue_type
    - status
    - priority
    - started_on
    - next_action
    - updated_at
  source_payload:
    - list_legal_issues_request
    - list_legal_issues_response.items[]

legal_issue_detail:
  header_fields:
    - issue_id
    - title
    - issue_type
    - status
    - priority
    - started_on
    - next_action
    - updated_at

  sections:

    summary_section:
      fields:
        - summary

    child_counts_section:
      fields:
        - contracts
        - deadlines
        - risk_notes
        - consultations
        - attachments
        - checklists
        - timeline_events

    contract_preview_section:
      fields:
        - contract_id
        - title
        - contract_type
        - effective_to
        - status

    deadline_preview_section:
      fields:
        - deadline_id
        - deadline_type
        - due_at
        - completed_flag

    risk_preview_section:
      fields:
        - risk_note_id
        - risk_category
        - severity
        - summary

    consultation_preview_section:
      fields:
        - consultation_id
        - consultation_purpose
        - consulted_at
        - next_check_items

    attachment_preview_section:
      fields:
        - attachment_id
        - file_name
        - file_kind
        - uploaded_at

source_payload:
  - get_legal_issue_response

detail_actions:
  primary:
    - edit_issue
    - open_consultation_prep
  secondary:
    - add_contract
    - add_deadline
    - add_risk_note
    - add_attachment
    - generate_summary
    - open_share_view

detail_rules:
  - section ごとに分割して1画面に詰め込みすぎない
  - summary を先、raw note 系を後ろに置く
  - 法的助言ではない表示を consultation 導線近辺に出す


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/030.screen-fields/0900300004_BUSINESS_LEGAL_SUPPORT_CONTRACT_AND_DEADLINE_SCREEN_FIELDS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CONTRACT AND DEADLINE SCREEN FIELDS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

screen_id:
  - contract_list
  - contract_detail
  - deadline_list

contract_list:
  filters:
    - issue_id
    - status
    - contract_type
    - keyword
  columns_or_cards:
    - title
    - contract_type
    - counterparty_name
    - effective_from
    - effective_to
    - auto_renew_flag
    - amount_value
    - currency_code
    - status
  source_payload:
    - create_contract_item_response derived list view

contract_detail:
  fields:
    - contract_id
    - issue_id
    - title
    - contract_type
    - counterparty_id
    - signed_on
    - effective_from
    - effective_to
    - renewal_rule
    - auto_renew_flag
    - amount_value
    - currency_code
    - status
    - created_at
    - updated_at
  source_payload:
    - create_contract_item_response

deadline_list:
  filters:
    - issue_id
    - completed_flag
    - date_from
    - date_to
  columns_or_cards:
    - deadline_type
    - due_at
    - related_type
    - related_id
    - completed_flag
    - completed_at
  source_payload:
    - list_deadline_records_request
    - list_deadline_records_response.items[]

screen_rules:
  - amount_value は単独表示せず currency_code とセットで表示
  - effective_to が近い契約は強調表示する
  - completed_flag true の期限は既定で折りたたみ対象にできる


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/030.screen-fields/0900300005_BUSINESS_LEGAL_SUPPORT_CONSULTATION_AND_SHARE_SCREEN_FIELDS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CONSULTATION AND SHARE SCREEN FIELDS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

screen_id:
  - consultation_prep
  - summary_output
  - advisor_share_view

consultation_prep:
  fields:
    - issue_id
    - consultation_purpose
    - memo
    - question_list_text
    - result_note
    - next_check_items
    - checklist_items[]
  checklist_item_fields:
    - checklist_id
    - checklist_type
    - item_text
    - checked_flag
    - note
    - sort_order
  source_payload:
    - create_consultation_record_request
    - create_consultation_record_response
    - create_checklist_item_request
    - create_checklist_item_response
  screen_rules:
    - 法的助言ではない表示を常設
    - question_list_text は改行保持表示
    - result_note は相談後のみ強調対象

summary_output:
  fields:
    - issue_summary
    - facts[]
    - deadlines[]
    - risks[]
    - questions_for_expert[]
    - next_actions[]
    - generated_at
  source_payload:
    - generate_issue_summary_response
  screen_rules:
    - summary first / raw data later
    - export は副導線
    - summary は formal legal opinion と誤認させない表示を付ける

advisor_share_view:
  fields:
    - issue_id
    - share_scope
    - shared_to_label
    - note
    - shared_at
    - revoked_at
  source_payload:
    - create_advisor_share_record_request
    - create_advisor_share_record_response
  screen_rules:
    - read-only share を明記する
    - share_scope 選択は必須
    - revocation 導線を visible にする


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/0900000_INTERFACE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INTERFACE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 090.interface
owner: Boss
prepared_by: Zero

includes:
  - 0900001_BUSINESS_LEGAL_SUPPORT_INTERFACE_OVERVIEW.md
  - 010.core/0900002_INTERFACE_CORE_INDEX.md
  - 010.core/0900003_INTERFACE_CORE_OVERVIEW.md
  - 010.core/0900004_BUSINESS_LEGAL_SUPPORT_INTERFACE_SPEC.md
  - 020.detail/0900200000_INTERFACE_DETAIL_INDEX.md
  - 030.screen-fields/0900300000_SCREEN_FIELD_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 090.interface/0900001_BUSINESS_LEGAL_SUPPORT_INTERFACE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INTERFACE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 090.interface
owner: Boss
prepared_by: Zero

layer_purpose:
  - インターフェースレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 主要画面と UI 責務を定義する
  - モバイル優先だが PC/タブレットでも読める設計にする
  - 顧問相談前まとめビューを含める


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/010.core/1000002_SECURITY_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# SECURITY CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 100.security
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 1000003_SECURITY_CORE_OVERVIEW.md
  - 1000004_BUSINESS_LEGAL_SUPPORT_SECURITY_MODEL.md


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/010.core/1000003_SECURITY_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# SECURITY CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 100.security
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の セキュリティ における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/010.core/1000004_BUSINESS_LEGAL_SUPPORT_SECURITY_MODEL.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SECURITY MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 100.security
subfolder: 010.core
owner: Boss
prepared_by: Zero

security_controls:
  - owner_only_default
  - explicit_advisor_share
  - attachment_access_control
  - local_data_protection
  - export_confirmation
  - audit_hint_for_sensitive_actions

security_rules:
  - 初期状態は owner 限定
  - 共有は案件単位
  - 高機微データは自動拡散しない


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/020.access-control/1000200000_ACCESS_CONTROL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# ACCESS CONTROL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

includes:
  - 1000200001_BUSINESS_LEGAL_SUPPORT_ACCESS_CONTROL_OVERVIEW.md
  - 1000200002_BUSINESS_LEGAL_SUPPORT_ROLE_AND_PERMISSION_MATRIX.md
  - 1000200003_BUSINESS_LEGAL_SUPPORT_OWNER_AND_ADVISOR_SCOPE_RULES.md
  - 1000200004_BUSINESS_LEGAL_SUPPORT_VISIBILITY_AND_SOFT_DELETE_RULES.md
  - 1000200005_BUSINESS_LEGAL_SUPPORT_EXPORT_AND_SHARE_ACCESS_POLICY.md
  - 1000200006_BUSINESS_LEGAL_SUPPORT_RLS_READINESS_NOTES.md


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/020.access-control/1000200001_BUSINESS_LEGAL_SUPPORT_ACCESS_CONTROL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ACCESS CONTROL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の権限境界を固定する
  - owner / advisor_viewer の責務差分を明確にする
  - 実装前に life スキーマ前提のアクセス方針をそろえる

security_principles:
  - 正本データは owner 管理
  - advisor_viewer は read-only
  - share は明示操作のみ
  - export は相談支援用途に限定
  - share does not transfer ownership
  - archive と soft delete は可視性ルールを分ける
  - enterprise-wide authority は本アプリの責務外


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/020.access-control/1000200002_BUSINESS_LEGAL_SUPPORT_ROLE_AND_PERMISSION_MATRIX.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ROLE AND PERMISSION MATRIX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

roles:
  owner:
    description:
      - 本アプリの主要利用者
      - issue と関連記録の正本管理者

  advisor_viewer:
    description:
      - 将来拡張の共有閲覧役
      - 顧問相談向けの閲覧専用立場

permission_matrix:

  create_issue:
    owner: allowed
    advisor_viewer: denied

  update_issue:
    owner: allowed
    advisor_viewer: denied

  archive_issue:
    owner: allowed
    advisor_viewer: denied

  soft_delete_issue:
    owner: allowed
    advisor_viewer: denied

  create_contract_item:
    owner: allowed
    advisor_viewer: denied

  update_contract_item:
    owner: allowed
    advisor_viewer: denied

  view_contract_item:
    owner: allowed
    advisor_viewer: allowed_if_shared

  create_deadline_record:
    owner: allowed
    advisor_viewer: denied

  mark_deadline_completed:
    owner: allowed
    advisor_viewer: denied

  view_deadline_record:
    owner: allowed
    advisor_viewer: allowed_if_shared

  create_risk_note:
    owner: allowed
    advisor_viewer: denied

  view_risk_note:
    owner: allowed
    advisor_viewer: allowed_if_shared

  create_consultation_record:
    owner: allowed
    advisor_viewer: denied

  update_consultation_record:
    owner: allowed
    advisor_viewer: denied

  view_consultation_record:
    owner: allowed
    advisor_viewer: allowed_if_shared

  view_attachment:
    owner: allowed
    advisor_viewer: allowed_if_shared_and_in_scope

  create_attachment:
    owner: allowed
    advisor_viewer: denied

  generate_summary_export:
    owner: allowed
    advisor_viewer: denied

  create_share_record:
    owner: allowed
    advisor_viewer: denied

  revoke_share_record:
    owner: allowed
    advisor_viewer: denied

notes:
  - allowed_if_shared means a valid active share record must exist
  - advisor_viewer never gains edit authority in current design


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/020.access-control/1000200003_BUSINESS_LEGAL_SUPPORT_OWNER_AND_ADVISOR_SCOPE_RULES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT OWNER AND ADVISOR SCOPE RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

owner_scope:
  includes:
    - full issue view
    - full child records view
    - create / update / archive / soft delete
    - share and revoke
    - export and summary generation
  excludes:
    - enterprise legal truth declaration
    - automatic BusinessOS or ERP write

advisor_viewer_scope:
  includes:
    - summary view when shared
    - selected record view when shared
    - full issue read-only view when explicitly shared
  excludes:
    - any create
    - any update
    - any delete
    - any share to third party
    - ownership transfer
    - source-of-truth override

share_scope_mapping:
  summary_only:
    advisor_visible:
      - issue_summary
      - facts
      - deadlines summary
      - risk summary
      - questions_for_expert
      - next_actions

  selected_records:
    advisor_visible:
      - selected contracts
      - selected deadlines
      - selected risk notes
      - selected consultation notes

  full_issue_view:
    advisor_visible:
      - issue root
      - all current child records within share snapshot scope

rules:
  - share scope is selected by owner
  - advisor view must not silently expand scope
  - revoked share removes future visibility


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/020.access-control/1000200004_BUSINESS_LEGAL_SUPPORT_VISIBILITY_AND_SOFT_DELETE_RULES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT VISIBILITY AND SOFT DELETE RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

visibility_rules:
  active_records:
    - visible to owner by default
    - visible to advisor_viewer only when active share exists

  archived_records:
    - visible to owner in archive views
    - not visible to advisor_viewer by default unless explicitly included in active share handling policy

  soft_deleted_records:
    - hidden from default owner views
    - hidden from advisor_viewer views
    - retained for logical consistency until purge policy is defined elsewhere

query_assumptions:
  owner_default_query:
    - deleted_at is null
  advisor_default_query:
    - deleted_at is null
    - active share exists
    - record is inside allowed share scope

notes:
  - archive is not delete
  - soft delete is not ownership transfer
  - share revocation and soft delete are separate concepts


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/020.access-control/1000200005_BUSINESS_LEGAL_SUPPORT_EXPORT_AND_SHARE_ACCESS_POLICY.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT EXPORT AND SHARE ACCESS POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

export_policy:
  allowed_actor:
    - owner
  denied_actor:
    - advisor_viewer

export_types:
  - consultation_summary_export
  - issue_summary_export
  - selected_record_export

share_policy:
  allowed_actor:
    - owner
  denied_actor:
    - advisor_viewer

share_requirements:
  - issue_id required
  - share_scope required
  - explicit confirmation required
  - destination label or intended audience required

hard_rules:
  - export is not formal legal opinion
  - share is read-only in current design
  - share cannot be chained by advisor_viewer
  - export cannot imply enterprise archival truth


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/020.access-control/1000200006_BUSINESS_LEGAL_SUPPORT_RLS_READINESS_NOTES.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RLS READINESS NOTES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

rls_readiness:
  owner_side_predicates:
    - owner_user_id matches authenticated user
    - deleted_at is null for default reads
  child_table_predicates:
    - parent issue belongs to authenticated owner
    - deleted_at is null for default reads
  advisor_side_predicates_future:
    - active advisor share exists
    - requested record is inside allowed share scope
    - read-only access only

implementation_note:
  - this file is readiness only
  - actual SQL policy is not defined here
  - RLS exact statements belong to later implementation design

not_in_scope_yet:
  - shared token model
  - external consultant account lifecycle
  - cross-tenant advisor marketplace model


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/030.data-classification/1000300000_DATA_CLASSIFICATION_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# DATA CLASSIFICATION INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 030.data-classification
owner: Boss
prepared_by: Zero

includes:
  - 1000300001_BUSINESS_LEGAL_SUPPORT_DATA_CLASSIFICATION_OVERVIEW.md
  - 1000300002_BUSINESS_LEGAL_SUPPORT_DATA_SENSITIVITY_MATRIX.md
  - 1000300003_BUSINESS_LEGAL_SUPPORT_ATTACHMENT_HANDLING_CLASSIFICATION.md


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/030.data-classification/1000300001_BUSINESS_LEGAL_SUPPORT_DATA_CLASSIFICATION_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DATA CLASSIFICATION OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 030.data-classification
owner: Boss
prepared_by: Zero

purpose:
  - データ感度に応じた扱いを整理する
  - share/export 時の判断をそろえる
  - attachment の扱いを一段厳しく定義する


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/030.data-classification/1000300002_BUSINESS_LEGAL_SUPPORT_DATA_SENSITIVITY_MATRIX.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DATA SENSITIVITY MATRIX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 030.data-classification
owner: Boss
prepared_by: Zero

classification:

  normal:
    examples:
      - issue title
      - issue type
      - generic deadline type

  sensitive:
    examples:
      - counterparty contact note
      - consultation memo
      - risk note summary
      - timeline note

  highly_sensitive:
    examples:
      - attached contract file
      - evidence file
      - dispute details
      - privileged-looking preparation notes

rules:
  - advisor share defaults to summary-oriented exposure
  - highly_sensitive data should not be shared by default
  - attachment visibility should always be narrower than issue root visibility when needed


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/030.data-classification/1000300003_BUSINESS_LEGAL_SUPPORT_ATTACHMENT_HANDLING_CLASSIFICATION.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ATTACHMENT HANDLING CLASSIFICATION
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 030.data-classification
owner: Boss
prepared_by: Zero

attachment_handling:
  categories:
    - contract_pdf
    - screenshot_evidence
    - consultation_note_image
    - reference_material

rules:
  - attachment is never auto-shared by issue share alone unless scope explicitly allows it
  - file_kind must be visible before open action
  - deleted issue does not mean physical file purge in same phase
  - attachment metadata and file access policy must stay separable


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/1000000_SECURITY_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# SECURITY INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 100.security
owner: Boss
prepared_by: Zero

includes:
  - 1000001_BUSINESS_LEGAL_SUPPORT_SECURITY_OVERVIEW.md
  - 010.core/1000002_SECURITY_CORE_INDEX.md
  - 010.core/1000003_SECURITY_CORE_OVERVIEW.md
  - 010.core/1000004_BUSINESS_LEGAL_SUPPORT_SECURITY_MODEL.md
  - 020.access-control/1000200000_ACCESS_CONTROL_INDEX.md
  - 030.data-classification/1000300000_DATA_CLASSIFICATION_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 100.security/1000001_BUSINESS_LEGAL_SUPPORT_SECURITY_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SECURITY OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 100.security
owner: Boss
prepared_by: Zero

layer_purpose:
  - セキュリティレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 事業法務情報の保護を定義する
  - 添付、共有、出力時の制御を定める
  - 最小権限を基本とする


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/010.core/1100002_INFRASTRUCTURE_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INFRASTRUCTURE CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 110.infrastructure
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 1100003_INFRASTRUCTURE_CORE_OVERVIEW.md
  - 1100004_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_PROFILE.md


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/010.core/1100003_INFRASTRUCTURE_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# INFRASTRUCTURE CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 110.infrastructure
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の インフラ における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/010.core/1100004_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_PROFILE.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INFRASTRUCTURE PROFILE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 110.infrastructure
subfolder: 010.core
owner: Boss
prepared_by: Zero

infrastructure_assumptions:
  - mobile_first
  - multi_device_access
  - document_attachment_storage
  - notification_scheduler
  - app_setting_store

infra_rules:
  - 同期があっても正本境界は崩さない
  - 通知基盤は期限管理に従属する
  - 添付保存は案件紐付けを必須とする


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/020.detail/1100200000_INFRASTRUCTURE_DETAIL_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INFRASTRUCTURE DETAIL INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 110.infrastructure
subfolder: 020.detail
owner: Boss
prepared_by: Zero

includes:
  - 1100200001_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_DETAIL_OVERVIEW.md
  - 1100200002_BUSINESS_LEGAL_SUPPORT_STORAGE_AND_FILE_HANDLING_ASSUMPTIONS.md
  - 1100200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_AND_JOB_ASSUMPTIONS.md
  - 1100200004_BUSINESS_LEGAL_SUPPORT_MULTI_DEVICE_ASSUMPTIONS.md


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/020.detail/1100200001_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_DETAIL_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INFRASTRUCTURE DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 110.infrastructure
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - アプリ基盤前提を詳細化する
  - 添付、通知、複数端末利用の前提をそろえる
  - 実装前に infra の責務境界を固定する


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/020.detail/1100200002_BUSINESS_LEGAL_SUPPORT_STORAGE_AND_FILE_HANDLING_ASSUMPTIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT STORAGE AND FILE HANDLING ASSUMPTIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 110.infrastructure
subfolder: 020.detail
owner: Boss
prepared_by: Zero

storage_assumptions:
  relational_data:
    - life schema tables
  file_like_data:
    - attachment metadata in relational store
    - file body in file/object storage compatible layer

file_handling_rules:
  - metadata first, file second
  - attachment access policy must be checked before file open
  - share scope and file access scope are separable


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/020.detail/1100200003_BUSINESS_LEGAL_SUPPORT_NOTIFICATION_AND_JOB_ASSUMPTIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT NOTIFICATION AND JOB ASSUMPTIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 110.infrastructure
subfolder: 020.detail
owner: Boss
prepared_by: Zero

job_assumptions:
  - near-deadline check job
  - expiring-contract check job
  - summary generation request handling
  - share visibility refresh logic

notification_assumptions:
  - in-app first
  - push-ready later if needed
  - advisor notification not assumed in current base design


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/020.detail/1100200004_BUSINESS_LEGAL_SUPPORT_MULTI_DEVICE_ASSUMPTIONS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT MULTI DEVICE ASSUMPTIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 110.infrastructure
subfolder: 020.detail
owner: Boss
prepared_by: Zero

multi_device_assumptions:
  - iphone
  - android
  - pc
  - tablet

design_rules:
  - issue detail stays the main hub on all devices
  - list/detail split may widen on larger screens
  - summary/share remains explicit action on every device
  - write conflict handling is not fixed yet, but owner-first consistency is preserved


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/1100000_INFRASTRUCTURE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# INFRASTRUCTURE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

includes:
  - 1100001_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_OVERVIEW.md
  - 010.core/1100002_INFRASTRUCTURE_CORE_INDEX.md
  - 010.core/1100003_INFRASTRUCTURE_CORE_OVERVIEW.md
  - 010.core/1100004_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_PROFILE.md
  - 020.detail/1100200000_INFRASTRUCTURE_DETAIL_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 110.infrastructure/1100001_BUSINESS_LEGAL_SUPPORT_INFRASTRUCTURE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

layer_purpose:
  - インフラレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - アプリ運用に必要な基盤前提を定義する
  - マルチデバイス前提の同期/保存方針を整理する
  - LifeOS配下アプリとしての実装前提を置く


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/010.core/1200002_IMPLEMENTATION_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# IMPLEMENTATION CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 120.implementation
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 1200003_IMPLEMENTATION_CORE_OVERVIEW.md
  - 1200004_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_PLAN.md


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/010.core/1200003_IMPLEMENTATION_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# IMPLEMENTATION CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 120.implementation
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の 実装 における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/010.core/1200004_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_PLAN.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT IMPLEMENTATION PLAN
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 120.implementation
subfolder: 010.core
owner: Boss
prepared_by: Zero

implementation_steps:
  - app_shell
  - legal_issue_crud
  - contract_list_and_detail
  - deadline_management
  - attachment_linking
  - consultation_prep
  - advisor_share_view
  - ai_support_entry
  - lifeos_bridge
  - businessos_bridge

notes:
  - 共通部品詳細は別正本参照
  - 本アプリでは app-specific extension を実装する


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/020.payload/1200200000_PAYLOAD_DESIGN_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# PAYLOAD DESIGN INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 020.payload
owner: Boss
prepared_by: Zero

includes:
  - 1200200001_BUSINESS_LEGAL_SUPPORT_PAYLOAD_OVERVIEW.md
  - 1200200002_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_PAYLOAD.md
  - 1200200003_BUSINESS_LEGAL_SUPPORT_CONTRACT_AND_DEADLINE_PAYLOAD.md
  - 1200200004_BUSINESS_LEGAL_SUPPORT_RISK_AND_CONSULTATION_PAYLOAD.md
  - 1200200005_BUSINESS_LEGAL_SUPPORT_SUMMARY_EXPORT_AND_HANDOFF_PAYLOAD.md


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/020.payload/1200200001_BUSINESS_LEGAL_SUPPORT_PAYLOAD_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT PAYLOAD OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 020.payload
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の request / response exact payload を固定する
  - UI と保存モデルの間で扱う JSON 形状を明文化する
  - 実装前に項目名、型、nullable 方針をそろえる

payload_principles:
  - 正本スキーマは life
  - payload は JSON object を基本とする
  - id は uuid string
  - date は YYYY-MM-DD
  - datetime は ISO-8601 string with timezone
  - nullable 項目は明示的に null を許容する
  - boolean は true / false を省略しない
  - enum 値は model 定義に従う
  - 金額は amount_value + currency_code の組で持つ
  - ERP 直結 payload はこのアプリでは定義しない

common_field_rules:
  uuid:
    example: "11111111-2222-3333-4444-555555555555"
  date:
    example: "2026-04-14"
  datetime:
    example: "2026-04-14T10:30:00+09:00"
  amount_value:
    example: "120000.00"
  currency_code:
    example: "JPY"

response_principles:
  - create response は保存済み object を返す
  - update response も保存後の object を返す
  - delete は物理削除ではなく soft delete 前提
  - list response は items 配列を返す


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/020.payload/1200200002_BUSINESS_LEGAL_SUPPORT_LEGAL_ISSUE_PAYLOAD.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT LEGAL ISSUE PAYLOAD
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 020.payload
owner: Boss
prepared_by: Zero

create_legal_issue_request:
  json: |
    {
      "title": "業務委託契約の更新確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "high",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "更新条項を確認する"
    }

create_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "title": "業務委託契約の更新確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "high",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "更新条項を確認する",
      "archived_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:30:00+09:00",
      "updated_at": "2026-04-14T10:30:00+09:00"
    }

update_legal_issue_request:
  json: |
    {
      "title": "業務委託契約の更新と費用条件確認",
      "priority": "critical",
      "next_action": "相手方へ更新条件の確認メールを送る"
    }

update_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "title": "業務委託契約の更新と費用条件確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "critical",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "相手方へ更新条件の確認メールを送る",
      "archived_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:30:00+09:00",
      "updated_at": "2026-04-14T11:10:00+09:00"
    }

get_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "title": "業務委託契約の更新と費用条件確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "critical",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "相手方へ更新条件の確認メールを送る",
      "archived_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:30:00+09:00",
      "updated_at": "2026-04-14T11:10:00+09:00",
      "child_counts": {
        "contracts": 1,
        "deadlines": 2,
        "risk_notes": 1,
        "consultations": 0,
        "attachments": 3,
        "checklists": 4,
        "timeline_events": 2
      }
    }

list_legal_issues_request:
  json: |
    {
      "status": "active",
      "issue_type": null,
      "priority": null,
      "keyword": "更新",
      "page": 1,
      "page_size": 20
    }

list_legal_issues_response:
  json: |
    {
      "items": [
        {
          "issue_id": "11111111-2222-3333-4444-555555555555",
          "title": "業務委託契約の更新と費用条件確認",
          "issue_type": "contract",
          "status": "active",
          "priority": "critical",
          "started_on": "2026-04-14",
          "next_action": "相手方へ更新条件の確認メールを送る",
          "updated_at": "2026-04-14T11:10:00+09:00"
        }
      ],
      "page": 1,
      "page_size": 20,
      "has_next_page": false
    }

soft_delete_legal_issue_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555"
    }

soft_delete_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "deleted_at": "2026-04-14T12:00:00+09:00"
    }


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/020.payload/1200200003_BUSINESS_LEGAL_SUPPORT_CONTRACT_AND_DEADLINE_PAYLOAD.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT CONTRACT AND DEADLINE PAYLOAD
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 020.payload
owner: Boss
prepared_by: Zero

create_contract_item_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "title": "株式会社A 業務委託契約",
      "contract_type": "service_agreement",
      "counterparty_id": "99999999-8888-7777-6666-555555555555",
      "signed_on": "2026-03-01",
      "effective_from": "2026-04-01",
      "effective_to": "2027-03-31",
      "renewal_rule": "満了30日前までに異議なき場合自動更新",
      "auto_renew_flag": true,
      "amount_value": "120000.00",
      "currency_code": "JPY",
      "status": "active"
    }

create_contract_item_response:
  json: |
    {
      "contract_id": "c1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "title": "株式会社A 業務委託契約",
      "contract_type": "service_agreement",
      "counterparty_id": "99999999-8888-7777-6666-555555555555",
      "signed_on": "2026-03-01",
      "effective_from": "2026-04-01",
      "effective_to": "2027-03-31",
      "renewal_rule": "満了30日前までに異議なき場合自動更新",
      "auto_renew_flag": true,
      "amount_value": "120000.00",
      "currency_code": "JPY",
      "status": "active",
      "deleted_at": null,
      "created_at": "2026-04-14T10:45:00+09:00",
      "updated_at": "2026-04-14T10:45:00+09:00"
    }

create_deadline_record_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "deadline_type": "renewal_notice",
      "due_at": "2027-03-01T00:00:00+09:00",
      "alert_policy_code": "default_30_7_3_0"
    }

create_deadline_record_response:
  json: |
    {
      "deadline_id": "d1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "deadline_type": "renewal_notice",
      "due_at": "2027-03-01T00:00:00+09:00",
      "alert_policy_code": "default_30_7_3_0",
      "completed_flag": false,
      "completed_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:50:00+09:00",
      "updated_at": "2026-04-14T10:50:00+09:00"
    }

list_deadline_records_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "completed_flag": false,
      "date_from": "2026-04-01T00:00:00+09:00",
      "date_to": "2027-03-31T23:59:59+09:00"
    }

list_deadline_records_response:
  json: |
    {
      "items": [
        {
          "deadline_id": "d1111111-2222-3333-4444-555555555555",
          "issue_id": "11111111-2222-3333-4444-555555555555",
          "related_type": "contract_item",
          "related_id": "c1111111-2222-3333-4444-555555555555",
          "deadline_type": "renewal_notice",
          "due_at": "2027-03-01T00:00:00+09:00",
          "completed_flag": false
        }
      ]
    }

create_counterparty_request:
  json: |
    {
      "name": "株式会社A",
      "counterparty_type": "client_company",
      "country_code": "JP",
      "contact_person": "山田太郎",
      "contact_note": "法務窓口あり",
      "relationship_note": "継続取引先",
      "risk_level": "medium"
    }

create_counterparty_response:
  json: |
    {
      "counterparty_id": "99999999-8888-7777-6666-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "name": "株式会社A",
      "counterparty_type": "client_company",
      "country_code": "JP",
      "contact_person": "山田太郎",
      "contact_note": "法務窓口あり",
      "relationship_note": "継続取引先",
      "risk_level": "medium",
      "deleted_at": null,
      "created_at": "2026-04-14T10:40:00+09:00",
      "updated_at": "2026-04-14T10:40:00+09:00"
    }


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/020.payload/1200200004_BUSINESS_LEGAL_SUPPORT_RISK_AND_CONSULTATION_PAYLOAD.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT RISK AND CONSULTATION PAYLOAD
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 020.payload
owner: Boss
prepared_by: Zero

create_risk_note_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "risk_category": "renewal_risk",
      "severity": "high",
      "summary": "自動更新条項の解釈が曖昧。",
      "mitigation_note": "条項文言を再確認し、必要なら修正文案を準備する"
    }

create_risk_note_response:
  json: |
    {
      "risk_note_id": "r1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "risk_category": "renewal_risk",
      "severity": "high",
      "summary": "自動更新条項の解釈が曖昧。",
      "mitigation_note": "条項文言を再確認し、必要なら修正文案を準備する",
      "last_reviewed_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T11:00:00+09:00",
      "updated_at": "2026-04-14T11:00:00+09:00"
    }

create_consultation_record_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "consultation_purpose": "顧問相談前整理",
      "memo": "契約更新可否と更新条項解釈を確認したい。",
      "question_list_text": "更新拒否通知はいつまで必要か。修正覚書は必要か。",
      "result_note": null,
      "next_check_items": "現契約条文の再確認"
    }

create_consultation_record_response:
  json: |
    {
      "consultation_id": "q1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "consultation_purpose": "顧問相談前整理",
      "memo": "契約更新可否と更新条項解釈を確認したい。",
      "question_list_text": "更新拒否通知はいつまで必要か。修正覚書は必要か。",
      "result_note": null,
      "next_check_items": "現契約条文の再確認",
      "consulted_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T11:05:00+09:00",
      "updated_at": "2026-04-14T11:05:00+09:00"
    }

create_checklist_item_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "checklist_type": "questions_for_expert",
      "item_text": "更新通知期限を確認する",
      "checked_flag": false,
      "note": null,
      "sort_order": 10
    }

create_checklist_item_response:
  json: |
    {
      "checklist_id": "k1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "checklist_type": "questions_for_expert",
      "item_text": "更新通知期限を確認する",
      "checked_flag": false,
      "note": null,
      "sort_order": 10,
      "deleted_at": null,
      "created_at": "2026-04-14T11:06:00+09:00",
      "updated_at": "2026-04-14T11:06:00+09:00"
    }

create_trouble_timeline_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "occurred_at": "2026-04-13T14:00:00+09:00",
      "event_type": "counterparty_message",
      "summary": "相手方から更新条件見直し希望の連絡あり。",
      "note": "単価変更の示唆あり。",
      "evidence_attachment_count": 1
    }

create_trouble_timeline_response:
  json: |
    {
      "timeline_id": "t1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "occurred_at": "2026-04-13T14:00:00+09:00",
      "event_type": "counterparty_message",
      "summary": "相手方から更新条件見直し希望の連絡あり。",
      "note": "単価変更の示唆あり。",
      "evidence_attachment_count": 1,
      "deleted_at": null,
      "created_at": "2026-04-14T11:07:00+09:00",
      "updated_at": "2026-04-14T11:07:00+09:00"
    }


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/020.payload/1200200005_BUSINESS_LEGAL_SUPPORT_SUMMARY_EXPORT_AND_HANDOFF_PAYLOAD.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT SUMMARY EXPORT AND HANDOFF PAYLOAD
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 020.payload
owner: Boss
prepared_by: Zero

generate_issue_summary_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "include_contracts": true,
      "include_deadlines": true,
      "include_risk_notes": true,
      "include_consultation_records": true,
      "include_timeline": true,
      "include_attachments": false
    }

generate_issue_summary_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "summary_bundle": {
        "issue_summary": "業務委託契約の更新と費用条件確認",
        "facts": [
          "契約満了予定日は 2027-03-31",
          "自動更新条項あり",
          "相手方から条件見直し希望あり"
        ],
        "deadlines": [
          {
            "deadline_type": "renewal_notice",
            "due_at": "2027-03-01T00:00:00+09:00"
          }
        ],
        "risks": [
          {
            "risk_category": "renewal_risk",
            "severity": "high",
            "summary": "自動更新条項の解釈が曖昧。"
          }
        ],
        "questions_for_expert": [
          "更新拒否通知はいつまで必要か。",
          "修正覚書は必要か。"
        ],
        "next_actions": [
          "現契約条文の再確認",
          "相手方へ更新条件確認メール送付"
        ]
      },
      "generated_at": "2026-04-14T11:30:00+09:00"
    }

create_advisor_share_record_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "share_scope": "summary_only",
      "shared_to_label": "顧問弁護士向け準備資料",
      "note": "正式意見ではなく相談前整理のみ共有"
    }

create_advisor_share_record_response:
  json: |
    {
      "share_id": "s1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "share_scope": "summary_only",
      "shared_to_label": "顧問弁護士向け準備資料",
      "shared_at": "2026-04-14T11:35:00+09:00",
      "revoked_at": null,
      "note": "正式意見ではなく相談前整理のみ共有",
      "deleted_at": null
    }

create_businessos_handoff_draft_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "handoff_scope": "issue_and_contracts",
      "destination": "BusinessOS",
      "reason": "正式社内レビューが必要になったため"
    }

create_businessos_handoff_draft_response:
  json: |
    {
      "source_issue_id": "11111111-2222-3333-4444-555555555555",
      "destination": "BusinessOS",
      "handoff_scope": "issue_and_contracts",
      "reason": "正式社内レビューが必要になったため",
      "status": "draft_ready",
      "generated_at": "2026-04-14T11:40:00+09:00"
    }

not_defined_here:
  - ERP direct handoff payload
  - enterprise approval payload
  - legal conclusion output payload


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/030.phase-boundary/1200300000_PHASE_BOUNDARY_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# PHASE BOUNDARY INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 030.phase-boundary
owner: Boss
prepared_by: Zero

includes:
  - 1200300001_BUSINESS_LEGAL_SUPPORT_PHASE_BOUNDARY_OVERVIEW.md
  - 1200300002_BUSINESS_LEGAL_SUPPORT_WHAT_IS_FIXED_NOW.md
  - 1200300003_BUSINESS_LEGAL_SUPPORT_WHAT_IS_DEFERRED.md


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/030.phase-boundary/1200300001_BUSINESS_LEGAL_SUPPORT_PHASE_BOUNDARY_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT PHASE BOUNDARY OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 030.phase-boundary
owner: Boss
prepared_by: Zero

purpose:
  - 今回固定した設計範囲と、まだ先送りした範囲を分ける
  - 次段で SQL や API 実装に入っても迷わないようにする


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/030.phase-boundary/1200300002_BUSINESS_LEGAL_SUPPORT_WHAT_IS_FIXED_NOW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT WHAT IS FIXED NOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 030.phase-boundary
owner: Boss
prepared_by: Zero

fixed_now:
  - app positioning
  - life schema boundary
  - logical table catalog
  - logical payloads
  - screen field design
  - access control design
  - API contract design
  - DDL readiness
  - state transitions
  - pricing and disclaimer policy


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/030.phase-boundary/1200300003_BUSINESS_LEGAL_SUPPORT_WHAT_IS_DEFERRED.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT WHAT IS DEFERRED
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 030.phase-boundary
owner: Boss
prepared_by: Zero

deferred:
  - exact CREATE TABLE SQL
  - exact CREATE INDEX SQL
  - exact RLS SQL
  - actual API implementation
  - actual file upload implementation
  - actual notification job implementation
  - actual BusinessOS handoff runtime
  - UI component code
  - Android / iPhone / PC implementation details

note:
  - current phase is design-complete oriented, not implementation-started


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/1200000_IMPLEMENTATION_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# IMPLEMENTATION INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 120.implementation
owner: Boss
prepared_by: Zero

includes:
  - 1200001_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_OVERVIEW.md
  - 010.core/1200002_IMPLEMENTATION_CORE_INDEX.md
  - 010.core/1200003_IMPLEMENTATION_CORE_OVERVIEW.md
  - 010.core/1200004_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_PLAN.md
  - 020.payload/1200200000_PAYLOAD_DESIGN_INDEX.md
  - 030.phase-boundary/1200300000_PHASE_BOUNDARY_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 120.implementation/1200001_BUSINESS_LEGAL_SUPPORT_IMPLEMENTATION_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 120.implementation
owner: Boss
prepared_by: Zero

layer_purpose:
  - 実装レイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 実装順序と固定対象を定義する
  - 共通部品参照点とアプリ固有実装点を分ける
  - payload 固定の前提を整える


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/010.core/1300002_DEVELOPMENT_CORE_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# DEVELOPMENT CORE INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 130.development
subfolder: 010.core
owner: Boss
prepared_by: Zero

includes:
  - 1300003_DEVELOPMENT_CORE_OVERVIEW.md
  - 1300004_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_ROADMAP.md


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/010.core/1300003_DEVELOPMENT_CORE_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# DEVELOPMENT CORE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 130.development
subfolder: 010.core
owner: Boss
prepared_by: Zero

core_scope:
  - BusinessLegalSupport の 開発 における中核設計を扱う
  - 他アプリ共通候補そのものではなく、本アプリ責務と接続前提を記述する


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/010.core/1300004_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_ROADMAP.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DEVELOPMENT ROADMAP
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 130.development
subfolder: 010.core
owner: Boss
prepared_by: Zero

development_phases:
  - phase_1_foundation_docs
  - phase_2_payload_fix
  - phase_3_screen_contract_fix
  - phase_4_storage_and_sync_design
  - phase_5_app_implementation

review_points:
  - 法務境界が崩れていないか
  - 生活法務と事業法務が混ざっていないか
  - BusinessOS/ERP 正本と競合していないか
  - 共有が過剰になっていないか


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/020.review-checklist/1300200000_REVIEW_CHECKLIST_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# REVIEW CHECKLIST INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 020.review-checklist
owner: Boss
prepared_by: Zero

includes:
  - 1300200001_BUSINESS_LEGAL_SUPPORT_REVIEW_CHECKLIST_OVERVIEW.md
  - 1300200002_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_REVIEW_CHECKLIST.md
  - 1300200003_BUSINESS_LEGAL_SUPPORT_DATA_AND_API_REVIEW_CHECKLIST.md
  - 1300200004_BUSINESS_LEGAL_SUPPORT_POLICY_AND_SECURITY_REVIEW_CHECKLIST.md


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/020.review-checklist/1300200001_BUSINESS_LEGAL_SUPPORT_REVIEW_CHECKLIST_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT REVIEW CHECKLIST OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 020.review-checklist
owner: Boss
prepared_by: Zero

purpose:
  - 設計見直し観点を固定する
  - 実装前レビューの抜け漏れを減らす
  - 次チャットや次工程へ渡す確認表にする


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/020.review-checklist/1300200002_BUSINESS_LEGAL_SUPPORT_ARCHITECTURE_REVIEW_CHECKLIST.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT ARCHITECTURE REVIEW CHECKLIST
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 020.review-checklist
owner: Boss
prepared_by: Zero

architecture_review:
  - BusinessLegalSupport と BusinessOS の境界は明確か
  - ERP 直結前提が紛れ込んでいないか
  - issue 中心構造は一貫しているか
  - share/export が source of truth を奪っていないか


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/020.review-checklist/1300200003_BUSINESS_LEGAL_SUPPORT_DATA_AND_API_REVIEW_CHECKLIST.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DATA AND API REVIEW CHECKLIST
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 020.review-checklist
owner: Boss
prepared_by: Zero

data_api_review:
  - schema is still life
  - payload names and table names align
  - status transitions and API operations align
  - soft delete policy is consistent
  - list/read/write contracts are consistent
  - share scope and read visibility are consistent


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/020.review-checklist/1300200004_BUSINESS_LEGAL_SUPPORT_POLICY_AND_SECURITY_REVIEW_CHECKLIST.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT POLICY AND SECURITY REVIEW CHECKLIST
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 020.review-checklist
owner: Boss
prepared_by: Zero

policy_security_review:
  - legal advice disclaimer remains visible where required
  - advisor_viewer remains read-only
  - attachment handling is narrower than default issue sharing when needed
  - highly sensitive data exposure is minimized
  - export is not framed as legal opinion
  - AI support wording does not impersonate professional advice


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/030.final-audit/1300300000_FINAL_AUDIT_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# FINAL AUDIT INDEX
# ============================================================

status: canonical-final-audit
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 030.final-audit
owner: Boss
prepared_by: Zero

includes:
  - 1300300001_BUSINESS_LEGAL_SUPPORT_FINAL_AUDIT_OVERVIEW.md
  - 1300300002_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETENESS_AUDIT.md
  - 1300300003_BUSINESS_LEGAL_SUPPORT_OPEN_ITEMS_AND_DEFERRALS.md
  - 1300300004_BUSINESS_LEGAL_SUPPORT_READINESS_JUDGMENT.md
  - 1300300005_BUSINESS_LEGAL_SUPPORT_FINAL_SIGNOFF_CRITERIA.md


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/030.final-audit/1300300001_BUSINESS_LEGAL_SUPPORT_FINAL_AUDIT_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FINAL AUDIT OVERVIEW
# ============================================================

status: canonical-final-audit
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 030.final-audit
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の設計完了判定を行う
  - このチャットで追加された設計群の監査観点を固定する
  - 実装前に「何が完了で、何が未着手か」を明文化する

audit_scope:
  - constitution
  - architecture
  - model
  - runtime
  - flow
  - integration
  - operations
  - policy
  - interface
  - security
  - infrastructure
  - implementation-readiness
  - development review

audit_principles:
  - 実装の有無と設計完了は分けて扱う
  - 184ファイルの存在よりも、境界整合性を重視する
  - BusinessOS / ERP 境界逸脱がないことを重視する
  - life スキーマ固定が崩れていないことを重視する


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/030.final-audit/1300300002_BUSINESS_LEGAL_SUPPORT_DESIGN_COMPLETENESS_AUDIT.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DESIGN COMPLETENESS AUDIT
# ============================================================

status: canonical-final-audit
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 030.final-audit
owner: Boss
prepared_by: Zero

completeness_audit:

  constitution:
    status: complete
    notes:
      - 存在理由
      - 非目的
      - 価値提案
      - 境界憲章
      - すべて定義済み

  architecture:
    status: complete
    notes:
      - コンポーネント分離
      - read/write boundary
      - source of truth policy
      - 定義済み

  model:
    status: complete
    notes:
      - entity definitions
      - logical table catalog
      - schema boundary
      - ddl readiness
      - 定義済み

  runtime:
    status: complete
    notes:
      - event chain
      - notification runtime
      - summary generation runtime
      - 定義済み

  flow:
    status: complete
    notes:
      - core journeys
      - issue intake
      - BusinessOS bridge trigger
      - state machine
      - 定義済み

  integration:
    status: complete
    notes:
      - boundary matrix
      - handoff rules
      - api contract
      - 定義済み

  operations:
    status: complete
    notes:
      - operation rhythm
      - notification and review policy
      - runbook
      - cleanup rule
      - 定義済み

  policy:
    status: complete
    notes:
      - AI legal boundary
      - sharing/export policy
      - pricing
      - disclaimer
      - 定義済み

  interface:
    status: complete
    notes:
      - screen catalog
      - screen transition
      - presentation rule
      - screen field design
      - 定義済み

  security:
    status: complete
    notes:
      - role/permission matrix
      - visibility rule
      - export/share access policy
      - data classification
      - 定義済み

  infrastructure:
    status: complete
    notes:
      - storage assumptions
      - notification/job assumptions
      - multi-device assumptions
      - 定義済み

  implementation_readiness:
    status: complete
    notes:
      - payload design
      - phase boundary
      - deferred scope
      - 定義済み

  development:
    status: complete
    notes:
      - review checklist
      - final audit
      - handoff readiness
      - 定義済み

overall_design_completeness:
  status: complete
  meaning:
    - 設計は完了判定可能
    - 実装は未着手のまま維持


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/030.final-audit/1300300003_BUSINESS_LEGAL_SUPPORT_OPEN_ITEMS_AND_DEFERRALS.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT OPEN ITEMS AND DEFERRALS
# ============================================================

status: canonical-final-audit
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 030.final-audit
owner: Boss
prepared_by: Zero

open_items:
  none_in_design_scope:
    - このチャットで扱うべき設計上の必須未処理は残していない

deferred_to_implementation_phase:
  - exact CREATE TABLE SQL
  - exact CREATE INDEX SQL
  - exact RLS SQL
  - trigger implementation
  - actual API implementation code
  - actual UI implementation code
  - actual file upload implementation
  - actual notification job runtime
  - actual BusinessOS handoff execution

deferred_but_intentional:
  - deferred items are not design defects
  - they are implementation-phase responsibilities
  - current chat policy keeps implementation out of scope

guardrail:
  - 新しい product scope をこの段階で追加しない
  - SQL phase に入るまで app scope を固定する


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/030.final-audit/1300300004_BUSINESS_LEGAL_SUPPORT_READINESS_JUDGMENT.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT READINESS JUDGMENT
# ============================================================

status: canonical-final-audit
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 030.final-audit
owner: Boss
prepared_by: Zero

readiness_judgment:

  product_design_readiness:
    status: ready
    reason:
      - app scope fixed
      - value proposition fixed
      - pricing and disclaimer fixed

  schema_design_readiness:
    status: ready
    reason:
      - life schema fixed
      - logical tables fixed
      - ddl readiness fixed

  interface_design_readiness:
    status: ready
    reason:
      - screen catalog fixed
      - field-level mapping fixed
      - screen transition rules fixed

  api_design_readiness:
    status: ready
    reason:
      - endpoint catalog fixed
      - payload mapping fixed
      - error policy fixed

  security_design_readiness:
    status: ready
    reason:
      - owner/advisor permission fixed
      - visibility rules fixed
      - classification rules fixed

  implementation_start_readiness:
    status: conditionally_ready
    reason:
      - implementation can start later
      - but this chat intentionally stops before actual build work

final_judgment:
  - BusinessLegalSupport is design-ready
  - BusinessLegalSupport is not implementation-started
  - BusinessLegalSupport is safe to hand off to SQL / API / UI implementation phase later


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/030.final-audit/1300300005_BUSINESS_LEGAL_SUPPORT_FINAL_SIGNOFF_CRITERIA.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT FINAL SIGNOFF CRITERIA
# ============================================================

status: canonical-final-audit
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 030.final-audit
owner: Boss
prepared_by: Zero

signoff_criteria:
  criterion_1:
    name: app boundary fixed
    status: pass
    condition:
      - no BusinessOS / ERP overreach remains

  criterion_2:
    name: schema boundary fixed
    status: pass
    condition:
      - primary schema remains life

  criterion_3:
    name: issue-centric model fixed
    status: pass
    condition:
      - issue root and child structure remain stable

  criterion_4:
    name: payload and api contract fixed
    status: pass
    condition:
      - request / response and endpoints are defined

  criterion_5:
    name: screen design fixed
    status: pass
    condition:
      - screen field and transition rules are defined

  criterion_6:
    name: security model fixed
    status: pass
    condition:
      - owner / advisor_viewer authority split is clear

  criterion_7:
    name: policy and disclaimer fixed
    status: pass
    condition:
      - legal-advice non-substitution is clearly embedded

  criterion_8:
    name: implementation intentionally deferred
    status: pass
    condition:
      - no accidental implementation drift in this design phase

final_signoff_judgment:
  result: pass
  meaning:
    - BusinessLegalSupport design phase can be considered complete in this chat
    - next phase is optional implementation preparation, not more base design


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/1300000_DEVELOPMENT_INDEX.md
-------------------------------------------------------------------------------

# ============================================================
# DEVELOPMENT INDEX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 130.development
owner: Boss
prepared_by: Zero

includes:
  - 1300001_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_OVERVIEW.md
  - 010.core/1300002_DEVELOPMENT_CORE_INDEX.md
  - 010.core/1300003_DEVELOPMENT_CORE_OVERVIEW.md
  - 010.core/1300004_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_ROADMAP.md
  - 020.review-checklist/1300200000_REVIEW_CHECKLIST_INDEX.md
  - 030.final-audit/1300300000_FINAL_AUDIT_INDEX.md


-------------------------------------------------------------------------------
SOURCE_FILE: 130.development/1300001_BUSINESS_LEGAL_SUPPORT_DEVELOPMENT_OVERVIEW.md
-------------------------------------------------------------------------------

# ============================================================
# BUSINESS LEGAL SUPPORT DEVELOPMENT OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 130.development
owner: Boss
prepared_by: Zero

layer_purpose:
  - 開発レイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 開発ロードマップと確認観点を整理する
  - 実装前の固定項目を明文化する
  - 次段階へ渡す準備資料とする

