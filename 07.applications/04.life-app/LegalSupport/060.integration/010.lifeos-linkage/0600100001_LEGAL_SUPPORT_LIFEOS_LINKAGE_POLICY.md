# ============================================================
# LEGAL SUPPORT LIFEOS LINKAGE POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: integration
subdomain: lifeos-linkage

integration_purpose:
  - LegalSupport を LifeOS 内の個人法務整理入口とする
  - 案件内容に応じて他アプリへ適切に振り分ける
  - 法的結論ではなく情報整理結果のみを連携対象とする

linkage_targets:
  inheritance_support:
    target_system: InheritanceSupport
    routing_conditions:
      - 相続
      - 贈与
      - 遺産分割
      - 遺言関連
      - 相続人整理
    linkage_scope:
      - legal_case summary
      - fact_timeline summary
      - stakeholder summary
      - document checklist
      - deadline summary
    non_linkage_scope:
      - 法的結論
      - 勝敗予測
      - 外部専門家の確定判断

  business_legal_support:
    target_system: BusinessLegalSupport
    routing_conditions:
      - 個人生活案件ではなく事業案件
      - 契約先が事業主体
      - 労務、取引、債権回収など事業文脈が強い
    linkage_scope:
      - case category
      - issue summary
      - document checklist
      - action summary

  end_of_life_planner:
    target_system: EndOfLifePlanner
    routing_conditions:
      - 遺言
      - 医療意思
      - 家族引継ぎ
      - 終活整理
    linkage_scope:
      - 引継ぎ対象情報
      - 家族共有対象情報
      - 必要書類整理状況

  money_planner:
    target_system: MoneyPlanner
    routing_conditions:
      - 相談費用整理
      - 手数料見積
      - 継続支払い整理
    linkage_scope:
      - expense_record
      - currency summary
      - payment schedule summary
    timing:
      - 将来拡張

integration_principles:
  - 連携は案件分類ベースで行う
  - ユーザーの明示操作を前提にする
  - 共有範囲外の情報を他アプリへ渡さない
  - 法的助言に相当する内容を連携しない
  - LifeOS内部連携と外部専門家共有は分離する

handoff_unit:
  minimum_handoff_bundle:
    - case_title
    - category
    - summary
    - structured_timeline_summary
    - stakeholder_summary
    - document_summary
    - action_summary
    - deadline_summary

future_extensions:
  - 外部専門家共有用パッケージ連携
  - 面談前要約自動生成
  - OCR抽出結果の書類メタ連携
