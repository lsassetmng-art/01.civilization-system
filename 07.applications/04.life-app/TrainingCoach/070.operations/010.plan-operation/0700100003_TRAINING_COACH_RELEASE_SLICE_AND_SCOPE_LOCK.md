# ============================================================
# TRAINING COACH RELEASE SLICE AND SCOPE LOCK
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - 初期リリースの範囲を固定する
  - 実装前に scope creep を抑える
  - must / later / out-of-scope を明示する

release_slice_v1:
  include:
    - Free / Premium の2段階
    - training_plan 作成
    - training_session 実施
    - completion_log 確定
    - fatigue_note 入力
    - streak_summary 表示
    - guide_viewer
    - BodyMetrics 日次概要受信
    - MealPlanner / LifePlanner 向け概要連携
    - safety message 表示
  exclude_until_later:
    - 姿勢チェック連携
    - スマートウォッチ詳細リアルタイム連携
    - 家族 / 友人共有の深い権限分岐
    - coach_view 詳細機能
    - 外部トレーナー相談
    - プレミアム動画パック
    - 高度 recommendation AI
  hard_out_of_scope:
    - 医療診断
    - 治療メニュー
    - 医療機関代替判断
    - 高負荷強制最適化
    - ERP 主保存

screen_scope_v1:
  - dashboard
  - today_plan
  - plan_editor
  - session_execution
  - completion_result
  - guide_viewer
  - settings
  - premium_upgrade

v1_success_definition:
  - ユーザーが安全に運動計画を作れる
  - 本日の運動を実施・記録できる
  - 継続状況が見える
  - 体調悪化時に保守的な誘導ができる
  - LifeOS 他アプリと最小限の意味連携が成立する
