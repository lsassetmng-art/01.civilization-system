# ============================================================
# TRAINING COACH INTEGRATED
# ============================================================

status: canonical-draft
phase: design-initialization
system: TrainingCoach
domain: 01.civilization-system/07.applications/04.life-app
owner: Boss
prepared_by: Zero

app_name:
  en: TrainingCoach
  ja: トレーニング支援アプリ

positioning:
  - ヨガ、ストレッチ、器具運動、日常運動を支援する軽量アプリ
  - 生活に合わせた運動メニュー策定と実施継続に特化
  - 医療ではなく、生活改善・運動習慣化・体力維持支援を主目的とする

core_purpose:
  - 運動メニュー作成
  - 実施支援
  - 継続支援
  - 身体状態と目標に応じた負荷調整

main_users:
  - 運動初心者
  - 在宅運動ユーザー
  - 健康維持層
  - 体力向上層

roles:
  owner:
    - メニュー作成
    - 実施記録
    - 目標設定
    - 疲労度/体調入力
  coach_view:
    - 指示閲覧
    - 記録確認（将来拡張）
    - 助言メモ参照（将来拡張）

must_functions:
  - 運動メニュー作成
  - 実施記録
  - 種目分類（ヨガ、ストレッチ、有酸素、筋トレ、器具）
  - 日次/週次プラン
  - 所要時間管理
  - 達成チェック
  - メニュー再利用
  - 休息日設定

should_functions:
  - 体重や歩数連携
  - 疲労度入力
  - 難易度自動調整
  - 動画/画像ガイド
  - 連続実施記録
  - 通知
  - 目標別テンプレート
  - 体調連動メニュー差し替え

nice_to_have:
  - 姿勢チェック連携
  - スマートウォッチ心拍利用
  - 家族/友人共有
  - トレーナー相談連携
  - 運動消費量の推定表示
  - ガイドコンテンツのお気に入り保存

data_entities:
  - training_plan
  - training_session
  - exercise_item
  - exercise_category
  - difficulty_rule
  - completion_log
  - fatigue_note
  - training_goal
  - streak_summary
  - guide_content
  - device_sync_state

lifeos_boundaries:
  - BodyMetricsから体重、歩数、睡眠、心拍傾向受信
  - MealPlannerへ消費活動量の概要共有
  - LifePlannerへ健康目標進捗共有
  - 医療行為・診断・治療メニューは扱わない
  - 危険運動や高リスク負荷提案は安全制約下でのみ扱う
  - 痛み・異常値・けが疑い時は医療受診導線を優先する

common_components_addition_candidates:
  - 習慣トラッカー共通部品
  - ガイドコンテンツ表示共通部品
  - 目標/達成率共通部品
  - 通知・連続記録共通部品
  - 動画/画像ライブラリ共通部品
  - 疲労度/体調入力共通部品
  - デバイス連携状態表示共通部品
  - 安全注意表示共通部品

pricing_design:
  product_type:
    - 月額利用型アプリ
  support_policy:
    - 全プラン共通でAIチャットサポートのみ
  plans:
    free:
      monthly_price_jpy: 0
      plan_name_ja: Free
      included:
        - 手動の運動メニュー作成
        - 実施記録
        - 種目分類
        - 日次/週次プラン
        - 所要時間管理
        - 達成チェック
        - メニュー再利用
        - 休息日設定
        - 基本通知
        - 継続日数表示
    premium:
      monthly_price_jpy: 500
      plan_name_ja: Premium
      included:
        - Freeの全機能
        - BodyMetrics連携
        - 疲労度入力と難易度自動調整
        - 体調連動メニュー差し替え
        - 動画/画像ガイド
        - 目標別テンプレート
        - 詳細達成率表示
        - 強化通知
        - 端末横断同期の強化
        - 器具/レッスン費の管理連携
        - 複数プロフィール管理
        - 家族/友人共有
        - 家族の達成状況サマリー
        - 共有目標
        - 家族向け通知最適化

multilingual:
  required: true

multicurrency:
  required: true
  scope:
    - 有料プラン
    - 器具/レッスン費管理連携

multi_device:
  iphone: true
  android: true
  pc: true
  tablet: true

initial_release_policy:
  - まずは Free / Premium の2段階で開始する
  - 人間サポートや医療行為は初期範囲外とする
  - LifeOS他アプリとの連携は additive に進める

schema_binding:
  primary_schema: life
  notes:
    - TrainingCoach の正本データは life schema に配置する
    - LifeOS 領域アプリとして、保存責務は life を前提とする
