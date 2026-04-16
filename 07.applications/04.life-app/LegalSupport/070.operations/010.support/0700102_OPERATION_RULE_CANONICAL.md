# ============================================================
# OPERATION RULE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

operation_rules:

  intake_rules:
    - 初回は案件作成を最優先にする
    - 事実、関係者、書類を一度に強制しない
    - 入力未完でも下書き保存前提にする

  followup_rules:
    - 面談後は consultation_note 追加を優先する
    - unresolved_points は task 化しやすい形で保持する
    - 期限がある内容は deadline_event に分離する

  share_operation_rules:
    - 共有は owner 明示操作のみ
    - viewer は閲覧中心
    - delegated_editor は許可範囲のみ編集
    - 高秘匿書類は共有前に再確認を挟む

  export_operation_rules:
    - 共有パックは原資料のコピーではなく整理済み派生物
    - included_sections を明示する
    - redaction_level を明示する
    - 再生成は別履歴で扱う

  archive_rules:
    - 削除より archive を優先
    - archive 後も参照余地を残す
    - 高秘匿情報は archive 後も保護前提

  support_rules:
    - AI は整理補助に限定する
    - 判断断定はしない
    - 専門家確認が必要な場面を消さない

accident_prevention_points:
  - 共有相手の誤設定防止
  - 高秘匿項目の誤出力防止
  - 面談後の未記録防止
  - 期限未設定の放置防止
