# ============================================================
# LIFE PLANNER POLICY SET
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 080.policy
subfolder: 010.core
owner: Boss
prepared_by: Zero

policies:
  planning_boundary:
    - 人生判断の代替ではない
    - 最終判断は本人が行う
    - 専門領域判断は専門家または専門アプリで扱う
  sharing:
    - 家族共有は許可ベース
    - 不要な自動共有をしない
  ai:
    - 整理支援のみ
    - 断定表現を禁止する
  export:
    - 正式意見書出力を行わない
    - 専門領域の正本にはしない
