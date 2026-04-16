
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH USER FLOW OVERVIEW
# ============================================================

status: canonical-draft
phase: design-initialization
system: TrainingCoach
layer: 050.flow
owner: Boss
prepared_by: Zero

main_flows:
  onboarding:
    - 目標設定
    - レベル選択
    - 利用可能時間選択
    - 休息日設定
  plan_creation:
    - 種目選択
    - 日次/週次配置
    - 時間調整
    - 保存
  execution:
    - 本日のメニュー確認
    - ガイド閲覧
    - 実施
    - 完了記録
  continuity:
    - 継続日数確認
    - 達成率確認
    - 次回提案確認

future_flows:
  - 家族共有
  - coach_view
  - 姿勢チェック連携
