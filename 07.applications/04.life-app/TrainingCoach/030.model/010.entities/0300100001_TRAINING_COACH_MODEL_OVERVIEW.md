
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH MODEL OVERVIEW
# ============================================================

status: canonical-draft
phase: design-initialization
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero

entities:
  training_plan:
    purpose: 運動計画の正本
  training_session:
    purpose: 実施単位の記録
  exercise_item:
    purpose: 種目定義
  exercise_category:
    purpose: 種目分類
  difficulty_rule:
    purpose: 条件別の難易度調整ルール
  completion_log:
    purpose: 完了履歴
  fatigue_note:
    purpose: 疲労度や体調メモ
  training_goal:
    purpose: 目標定義
  streak_summary:
    purpose: 継続サマリー
  guide_content:
    purpose: 動画 / 画像 / テキスト案内
  device_sync_state:
    purpose: デバイス同期状態

model_policy:
  - 体調値は医療診断用途ではなく支援用途に限定する
  - 連携データは受信元正本の意味を崩さない
  - 提案用派生値と原データを分離する

schema_policy:
  primary_schema: life
  rules:
    - TrainingCoach のモデル保存先は life schema を正とする
    - 派生表示用データも原則 life schema 配下で扱う
    - 外部連携値は integration 経由で授受する
