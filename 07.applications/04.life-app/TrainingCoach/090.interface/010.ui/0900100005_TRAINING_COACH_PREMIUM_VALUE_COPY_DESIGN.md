# ============================================================
# TRAINING COACH PREMIUM VALUE COPY DESIGN
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - Premium 訴求の意味と文言方向性を固定する
  - 500円プランの価値訴求を誇張なしで整理する
  - UI文言と FAQ / billing 文言の整合を取りやすくする

premium_positioning:
  plan_name:
    - Premium
  monthly_price_jpy:
    - 500
  value_summary:
    - 個人強化機能と共有準備機能をまとめた上位プラン
  support_policy:
    - AIチャットサポートのみ

value_pillars:
  pillar_1:
    title_concept:
      - 続けやすさを強化
    feature_examples:
      - 詳細達成率表示
      - 強化通知
      - 体調連動メニュー差し替え
  pillar_2:
    title_concept:
      - 体調に合わせやすい
    feature_examples:
      - BodyMetrics連携
      - 疲労度入力と難易度自動調整
  pillar_3:
    title_concept:
      - ガイドが見やすい
    feature_examples:
      - 動画 / 画像ガイド
      - 目標別テンプレート
  pillar_4:
    title_concept:
      - 将来の共有に備えやすい
    feature_examples:
      - 複数プロフィール管理
      - 家族 / 友人共有の基盤

copy_tone:
  - calm
  - supportive
  - non-pushy
  - truthful
  - simple

must_include_messages:
  - Free でも基本利用できる
  - Premium は継続支援と連携強化が中心
  - 医療機能ではない
  - AIサポートのみ

must_not_messages:
  - 必ず痩せる
  - 必ず続く
  - 医師レベルの判断
  - 完全自動で最適化
  - 家族共有が初期実装済みと誤認させる表現

ui_copy_candidates:
  hero_title_key:
    - TC_BILLING_premium_hero_title
  hero_body_key:
    - TC_BILLING_premium_hero_body
  feature_list_keys:
    - TC_BILLING_premium_feature_bodymetrics
    - TC_BILLING_premium_feature_adaptive
    - TC_BILLING_premium_feature_guidance
    - TC_BILLING_premium_feature_progress
  footer_note_key:
    - TC_BILLING_premium_footer_note

placement_rules:
  - onboarding 終盤
  - premium_upgrade screen
  - premium-only action intercept
  - settings 内 plan info

frequency_guardrail:
  - same session で過剰表示しない
  - rest recommended 状態時は upsell 優先にしない
