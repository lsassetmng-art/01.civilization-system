# ============================================================
# END OF LIFE PLANNER RUNTIME BEHAVIOR
# ============================================================

status: canonical-draft
phase: L1-spec-placement

runtime_behaviors:
  first_time:
    - onboarding から開始
    - 最低限の本人情報、緊急連絡先、医療意思導線を優先する
  regular_use:
    - home_dashboard から未完了項目へ遷移
  sharing:
    - sharing_permission を参照して表示範囲を切り替える
  export:
    - handoff_document 生成前に masking_policy を必須確認
  emergency:
    - 緊急兆候検知時は通常入力支援より安全案内を優先する
