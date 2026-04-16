# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# FEATURE TO SCREEN MODEL RULE MAPPING
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

mapping:

  feature_case_management:
    screens:
      - home_dashboard
      - case_list
      - case_create
      - case_detail
    model_entities:
      - legal_case
    rule_sources:
      - 0800102_BUSINESS_RULE_CANONICAL.md
      - 0800103_SHARE_AND_CONFIDENTIALITY_DECISION_CANONICAL.md
    output_behavior:
      - create draft
      - update summary/status
      - archive instead of delete by default

  feature_fact_timeline:
    screens:
      - fact_timeline
    model_entities:
      - fact_timeline_event
      - fact_timeline_event_stakeholder relation candidate
    rule_sources:
      - 0800102_BUSINESS_RULE_CANONICAL.md
      - 0300107_DATA_RESPONSIBILITY_CANONICAL.md
    output_behavior:
      - separate fact confidence
      - allow incomplete source detail

  feature_stakeholder:
    screens:
      - stakeholder_list
    model_entities:
      - stakeholder
    rule_sources:
      - 0800102_BUSINESS_RULE_CANONICAL.md
      - 0300108_MODEL_DECISION_ADJUSTMENT_CANONICAL.md
    output_behavior:
      - case scoped stakeholder registry

  feature_document_evidence:
    screens:
      - document_list
    model_entities:
      - legal_document
      - evidence_item
    rule_sources:
      - 0800102_BUSINESS_RULE_CANONICAL.md
      - 1000102_SECURITY_RULE_CANONICAL.md
      - 0900103_SCREEN_DECISION_ADJUSTMENT_CANONICAL.md
    output_behavior:
      - same screen, separate entities
      - confidentiality aware display

  feature_consultation:
    screens:
      - consultation_log
    model_entities:
      - consultation_note
      - advisor_contact reference
    rule_sources:
      - 0800102_BUSINESS_RULE_CANONICAL.md
      - 0300108_MODEL_DECISION_ADJUSTMENT_CANONICAL.md
    output_behavior:
      - suggestion flow to task/deadline
      - no automatic task/deadline creation

  feature_task_deadline:
    screens:
      - task_board
      - deadline_board
    model_entities:
      - legal_task
      - deadline_event
    rule_sources:
      - 0700102_OPERATION_RULE_CANONICAL.md
      - 0800102_BUSINESS_RULE_CANONICAL.md
    output_behavior:
      - operational follow-up
      - incomplete deadline sophistication deferred

  feature_sharing_export:
    screens:
      - share_setting
    model_entities:
      - case_share_grant
      - case_share_pack
    rule_sources:
      - 0800103_SHARE_AND_CONFIDENTIALITY_DECISION_CANONICAL.md
      - 1000102_SECURITY_RULE_CANONICAL.md
    output_behavior:
      - explicit share only
      - included_sections required
      - highly_sensitive can still be excluded

  feature_lifeos_reference:
    screens:
      - case_detail context
    model_entities:
      - legal_case context only
    rule_sources:
      - 0600102_LIFEOS_INTEGRATION_RESPONSIBILITY_CANONICAL.md
      - 0600103_MODEL_INTEGRATION_ALIGNMENT_CANONICAL.md
    output_behavior:
      - summary reference only
      - no overwrite of other-app source of truth

implementation_note:
  - この mapping は feature 切り出し単位の handoff 用
  - 実装は screen 単位ではなく feature 単位で進める前提
