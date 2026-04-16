# ============================================================
# FAMILY CARE AND EXPORT FLOWS
# ============================================================

status: draft

family_care_flow:
  - owner が Family Care を有効化
  - 共有相手を指定
  - 指標単位・期間単位・メモ共有可否を設定
  - recipient が許可範囲のみ閲覧

export_flow:
  - owner が対象期間を選択
  - PDF/CSV を選ぶ
  - permission check
  - export job 作成
