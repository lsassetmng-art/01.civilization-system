# ============================================================
# LIFE PLANNER RISK LIST OPERATION POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 040.checklist-risk-value
owner: Boss
prepared_by: Zero
schema: life

risk_list_purpose:
  - 将来の懸念事項を見える化する
  - 計画に対する弱点や不確実性を整理する
  - 不安の羅列ではなく備えの論点整理として使う

risk_dimensions:
  - impact_level
  - urgency_level
  - preparedness_level
  - related_category
  - linked_goal_or_event

operation_rules:
  - risk item は risk log ではなく planning support item として扱う
  - 対策可能なものは goal や event に紐付ける
  - review cycle で high impact items を優先確認する
  - shared roles には scope 内リスクのみ表示する

risk_examples:
  - 大きな費用変動への備え不足
  - 長期健康目標の継続不安
  - 家族共有前提の認識差
  - 重要手続き時期の見落とし
