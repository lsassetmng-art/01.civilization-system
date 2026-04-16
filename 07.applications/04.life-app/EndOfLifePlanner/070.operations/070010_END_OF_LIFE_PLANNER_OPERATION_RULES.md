# ============================================================
# END OF LIFE PLANNER OPERATION RULES
# ============================================================

status: canonical-draft
phase: L1-spec-placement

operation_rules:
  - 共有は owner 明示操作のみ
  - 高機微カテゴリを含む出力は masking 確認必須
  - revoked 済み共有は即時非表示
  - 定期見直し通知は monthly / quarterly / half_yearly を許可
  - 監査ログは owner のみ閲覧可能
