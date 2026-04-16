# ============================================================
# LIFE PLANNER SECURITY AND DATA PROTECTION
# ============================================================

security_rules:
  - owner / family_viewer / family_editorで権限分離する
  - センシティブカテゴリは共有可否を個別制御する
  - 共有範囲外の情報はUI表示しない
  - review_logとshare historyを保持する
