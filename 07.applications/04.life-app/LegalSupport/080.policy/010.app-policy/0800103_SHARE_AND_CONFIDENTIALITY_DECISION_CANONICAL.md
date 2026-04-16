# ============================================================
# SHARE AND CONFIDENTIALITY DECISION CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only
schema_name: life

decision_summary:
  - viewer はコメント権限なし
  - highly_sensitive は初期既定で owner-only を許容
  - sensitive は family_safe export の既定候補
  - confidentiality_level は share_scope より優先して制御可能
  - 共有解除は inactive 優先思想を維持する

decisions:

  viewer_comment_policy:
    decision:
      - viewer は閲覧のみ
      - コメント機能は初期設計に含めない
    reason:
      - 権限事故を減らす
      - 相談整理の責務を単純に保つ

  highly_sensitive_policy:
    decision:
      - highly_sensitive は案件共有中でも owner-only を許容する
      - delegated_editor にも見せない構成を許可する
    reason:
      - 家族共有時の誤露出リスクが高い
      - 高秘匿は role より強い制限を持つべき

  sensitive_policy:
    decision:
      - sensitive は共有可能だが除外既定候補を持つ
      - export では family_safe を既定候補にする
    reason:
      - 共有利便性と安全性の両立

  share_pack_policy:
    decision:
      - 共有パック定型は初期は LegalSupport 固有で持つ
      - 将来の共通部品化候補には残す
    reason:
      - まずは法務整理文脈に合わせて最適化する

share_rules_fixed:
  - 明示共有のみ
  - included_sections を必須で持つ
  - exclude_sensitive_items を必須で持つ
  - redaction_level を必須で持つ
  - highly_sensitive は included_sections に含まれていても最終的に除外可能

export_rules_fixed:
  - export は原資料正本ではない
  - export は共有権限と同一ではない
  - export 可能でも全情報が出るとは限らない
