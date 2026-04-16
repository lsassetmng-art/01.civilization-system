# ============================================================
# MODEL INTEGRATION ALIGNMENT CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

alignment_points:

  inheritance_support_reference:
    integration_side:
      - heir_candidate summary
      - asset summary
      - debt summary
      - will note summary
    model_side_reference_targets:
      - legal_case.summary support
      - stakeholder candidate understanding
      - consultation preparation context
    note:
      - 正本は InheritanceSupport 側
      - LegalSupport は参照整理のみ

  end_of_life_planner_reference:
    integration_side:
      - intention summary
      - emergency contact summary
      - handover intent summary
    model_side_reference_targets:
      - stakeholder understanding
      - consultation preparation context
    note:
      - 意思情報の正本は EndOfLifePlanner 側

  money_planner_reference:
    integration_side:
      - asset summary
      - debt summary
      - money event summary
    model_side_reference_targets:
      - legal_case.summary support
      - consultation_note context
      - task / deadline preparation context
    note:
      - 金額管理正本は MoneyPlanner 側

model_consistency_rules:
  - integration で受けるのは要約と参照文脈
  - legal_case が他アプリ正本を吸収しない
  - stakeholder や legal_document に他アプリ正本を直接移植しない
  - consultation_note と legal_task は参照結果をもとに自アプリ文脈で整理する

summary:
  - integration と model の責務境界は整合している
  - LegalSupport は参照を受けても正本化しすぎない
