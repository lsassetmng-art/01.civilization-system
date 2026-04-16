# ============================================================
# BUSINESS RULE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

business_rules:

  case_rules:
    - 案件は legal_case 単位で管理する
    - 案件は owner が作成・編集・アーカイブする
    - 案件削除よりアーカイブを優先する
    - 案件の正本は法律判断ではなく整理情報である

  fact_rules:
    - 事実と推測を分離する
    - 事実確度を保持する
    - source_type を持てるようにする
    - 書類未添付でも事実記録は可能にする

  stakeholder_rules:
    - 関係者は案件単位で閉じる
    - 関係者種別を区別する
    - 重要関係者フラグを持てるようにする

  document_rules:
    - 書類 metadata と添付本体は別責務
    - confidentiality_level を保持する
    - reviewed_flag を保持する
    - 原本保管場所メモを持てるようにする

  consultation_rules:
    - 面談記録は相談内容整理の正本
    - 法的最終結論を確定するものではない
    - unresolved_points と next_steps を分ける

  task_rules:
    - タスクは案件単位
    - 期限なしタスクも許容する
    - viewer は更新不可を基本とする

  deadline_rules:
    - 期限イベントは案件単位
    - severity を保持可能にする
    - completion_flag を保持する

  share_rules:
    - 共有は owner の明示操作のみ
    - granted_role は viewer または delegated_editor を基本とする
    - 高秘匿情報は共有除外可能
    - 共有解除は delete ではなく inactive 優先思想

  export_rules:
    - 共有パックは原資料と別物として扱う
    - included_sections を記録する
    - redaction_level を記録する
    - 再生成時は別生成物として扱う

  support_rules:
    - AIチャットのみ
    - 専門家代行はしない
    - 訴訟方針保証はしない
    - 税務・法務の最終判断をしない

  security_rules:
    - 最小共有
    - 高秘匿の既定保護
    - 共有履歴を追える前提
    - export 実行履歴を追える前提

non_goals:
  - 法的結論エンジン
  - 訴訟戦略自動決定
  - 専門家署名行為
  - 申請/提出内容の保証
