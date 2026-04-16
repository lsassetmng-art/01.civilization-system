# ============================================================
# END OF LIFE PLANNER LIFEOS COMPARISON CARD
# under 04.life-app
# ============================================================

status: canonical-draft
phase: lifeos-comparison-card
app: EndOfLifePlanner

compare_axes:

  purpose_axis:
    summary:
      - 人生終盤の整理
      - 引継ぎ準備
      - 家族共有
    differs_from:
      LifePlanner:
        - 人生全体計画より終活特化
      LegalSupport:
        - 法律論点整理そのものではなく終活整理中心
      InheritanceSupport:
        - 相続そのものではなく相続準備入口中心
      MoneyPlanner:
        - 資産管理そのものではなく所在・引継ぎ整理中心

  data_axis:
    main_data:
      - 意思情報
      - 契約一覧
      - 書類所在
      - デジタル資産所在
      - 家族共有権限
    high_sensitivity:
      - medical_preference
      - care_preference
      - funeral_preference
      - digital_asset_note
      - family_message

  share_axis:
    share_model:
      - owner
      - family_viewer
      - delegated_editor
    share_source_of_truth:
      - eol_sharing_permission

  readiness_axis:
    design_state:
      - complete-level
    implementation_preparation:
      - complete
    implementation:
      - not_started

portfolio_meaning:
  - LifeOS 群の中で「終活」「引継ぎ」「家族共有」を担う中核アプリ候補
