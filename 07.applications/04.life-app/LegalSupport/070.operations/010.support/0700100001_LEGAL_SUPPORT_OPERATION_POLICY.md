# ============================================================
# LEGAL SUPPORT OPERATION POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: operations
subdomain: support

operation_objectives:
  - 個人が継続して相談整理を続けやすい運用にする
  - 重要期限漏れを減らす
  - 家族共有時の混乱を減らす
  - AIチャット支援を使いやすくする

support_model:
  user_support:
    - AIチャットによる使い方支援
    - 入力導線の説明
    - テンプレート利用案内
    - PDF出力手順案内
  excluded_support:
    - 人間専門家による法務相談
    - 法的結論保証
    - 個別紛争の代理

notification_operations:
  default_policy:
    - 通知は控えめ
    - 重要期限を優先
    - 不要な連続通知を避ける
  notification_types:
    - deadline_pre_alert
    - same_day_alert
    - unresolved_document_alert
    - family_share_update_alert
    - next_consultation_reminder

case_maintenance_rules:
  - 長期未更新案件は見直し提案を出す
  - 完了案件はアーカイブ候補として表示する
  - 保留案件は理由記録を促す
  - 未確認事項が多い案件は確認優先表示する

family_share_operations:
  - 案件共有前に共有範囲を再確認する
  - 共有相手ごとの閲覧範囲を見える化する
  - PDF出力前に含有項目を確認させる
  - 更新通知は共有中案件のみに限定する

quality_operations:
  - テンプレート見直し
  - 書類カテゴリ見直し
  - 通知条件見直し
  - 分野別質問テンプレート見直し

ops_metrics:
  - 継続記録率
  - 期限前確認率
  - PDF出力利用率
  - 家族共有利用率
  - 未整理書類減少率
