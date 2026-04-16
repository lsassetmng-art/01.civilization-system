# ============================================================
# MONEY PLANNER POLICY SET
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
layer: 080.policy
subfolder: 010.core
owner: Boss
prepared_by: Zero

policies:
  planning_boundary:
    - 投資判断の代替ではない
    - 税務判断の代替ではない
    - 最終判断は本人が行う
  sharing:
    - 家族共有は許可ベース
    - 不要な自動共有をしない
  ai:
    - 整理支援のみ
    - 断定表現を禁止する
  export:
    - 正式会計帳票の正本にはしない
    - 正式申告資料の正本にはしない
