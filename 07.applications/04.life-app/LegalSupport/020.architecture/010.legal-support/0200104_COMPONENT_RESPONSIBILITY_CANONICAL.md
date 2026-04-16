# ============================================================
# COMPONENT RESPONSIBILITY CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

component_responsibilities:

  home_dashboard:
    owns:
      - 全体状況の要約表示
      - 次アクションの見せ方
    does_not_own:
      - 案件編集正本
      - 共有設定正本

  case_overview_workspace:
    owns:
      - 案件基本情報の表示/整理責務
      - 状態把握
    does_not_own:
      - 関係者詳細
      - 書類 binary 保持

  fact_timeline_workspace:
    owns:
      - 時系列整理
      - 事実確度の見せ分け
    does_not_own:
      - 法的評価の断定

  stakeholder_workspace:
    owns:
      - 関係者整理
      - 役割メモ保持
    does_not_own:
      - 共有認可判定

  legal_document_workspace:
    owns:
      - 書類 metadata 整理
      - reviewed 状態
      - confidentiality 分類
    does_not_own:
      - export 正本
      - 最終共有判定

  evidence_workspace:
    owns:
      - 証拠 metadata 整理
      - source/authenticity メモ
    does_not_own:
      - 真正性保証

  consultation_log_workspace:
    owns:
      - 面談記録
      - unresolved_points
      - next_steps
    does_not_own:
      - 専門家判断の正当性保証

  task_workspace:
    owns:
      - やること整理
      - 状態管理
    does_not_own:
      - 通知送信実体

  deadline_workspace:
    owns:
      - 期限の見える化
      - completion_flag
    does_not_own:
      - カレンダー連携実処理

  share_grant_management:
    owns:
      - 共有相手
      - 権限種別
      - 対象範囲
    does_not_own:
      - export artifact 実体

  share_pack_export:
    owns:
      - 出力対象セクション選択
      - redaction 指定
      - 出力記録
    does_not_own:
      - 原資料正本
      - 共有権限の最終正本

  cross_app_reference:
    owns:
      - 他アプリ要約の参照受け口
    does_not_own:
      - 他アプリ正本更新
