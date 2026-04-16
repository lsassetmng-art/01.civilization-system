# ============================================================
# TRAINING COACH LIFEOS INTEGRATION
# ============================================================

status: canonical-draft
phase: design-initialization
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero

inbound_links:
  BodyMetrics:
    - 体重
    - 歩数
    - 睡眠傾向
    - 心拍傾向

outbound_links:
  MealPlanner:
    - 消費活動量の概要
  LifePlanner:
    - 健康目標進捗

integration_policy:
  - 受信元の値を改ざんしない
  - 共有は必要最小限にする
  - exact payload 固定は別段で定義する
  - 初期段階では意味境界の確定を先行する

schema_assumption:
  primary_schema: life
  notes:
    - TrainingCoach 側の保存責務は life schema
    - 他 LifeOS アプリとのやり取りは payload 契約で接続する
    - schema を跨ぐ直接参照ではなく、意味境界を優先する
