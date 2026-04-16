# ============================================================
# SECURITY RULE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

security_rules:

  access_rules:
    - owner は案件正本管理者
    - viewer は閲覧専用
    - delegated_editor は共有設定変更不可
    - 高秘匿情報は role より強い制限を持てる

  viewer_rules:
    - viewer にコメント権限は与えない
    - viewer に編集 UI は出さない
    - viewer に共有変更 UI は出さない

  confidentiality_rules:
    - confidentiality_level を保持する
    - highly_sensitive は owner-only 候補を許容する
    - sensitive は family_safe export 既定候補にする
    - confidentiality と share_scope は分けて考える

  share_rules:
    - 明示共有のみ
    - 共有解除は inactive 優先思想
    - included_sections を明示する
    - exclude_sensitive_items を保持する
    - highly_sensitive は 最終出力時にも再除外可能

  export_rules:
    - export は原資料と別管理
    - redaction_level を保持する
    - generated artifact を履歴管理対象にする
    - export 可能でも全情報が出るとは限らない

  audit_rules:
    - share grant を追跡する
    - share revoke を追跡する
    - high confidentiality document 閲覧を追跡候補にする
    - export generated を追跡する
    - permission changed を追跡する

  device_rules:
    - 端末ロック前提を推奨
    - 自動ロック前提を推奨
    - 生体認証は補助保護として扱う

risk_notes:
  - 家族共有は便利だが誤共有リスクがある
  - 出力は持ち出しリスクがある
  - 高秘匿書類は案件共有中でも別制御前提にする
