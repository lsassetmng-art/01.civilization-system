# ============================================================
# END OF LIFE PLANNER POLICY SET
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 080.policy
subfolder: 010.core
owner: Boss
prepared_by: Zero

policies:
  support_boundary:
    - 医療判断の代替ではない
    - 法的助言の代替ではない
    - 最終判断は本人または専門家
  sharing:
    - 家族共有は許可ベース
    - 不要な自動共有をしない
  ai:
    - 項目整理のみ
    - 断定表現を禁止する
  export:
    - 正式意見書出力を行わない
    - 公的手続書類の正本にはしない
