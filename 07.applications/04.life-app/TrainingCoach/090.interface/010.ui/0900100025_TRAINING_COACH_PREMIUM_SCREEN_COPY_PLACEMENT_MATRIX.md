# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH PREMIUM SCREEN COPY PLACEMENT MATRIX
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
  - premium_upgrade 画面で、どの文言をどこに置くかを固定する
  - hero / feature / note / CTA の役割を分離する
  - 誇張や情報過多を避ける

screen_code:
  - premium_upgrade

placement_policy:
  - 最初に価値の要約
  - 次に feature の具体説明
  - 最後に注意事項と CTA
  - safety / non-medical note を footer で落とさない
  - Free 継続 CTA を隠さない

placement_matrix:

hero_section:
  title_key:
    - TC_BILLING_premium_hero_title
  body_key:
    - TC_BILLING_premium_hero_body
  support_keys:
    - TC_BILLING_premium_plan_name
    - TC_BILLING_premium_price_monthly

feature_card_1:
  primary_key:
    - TC_BILLING_premium_feature_bodymetrics
  pillar_meaning:
    - linkage support

feature_card_2:
  primary_key:
    - TC_BILLING_premium_feature_adaptive
  pillar_meaning:
    - condition-based adjustment support

feature_card_3:
  primary_key:
    - TC_BILLING_premium_feature_guidance
  pillar_meaning:
    - guidance enhancement

feature_card_4:
  primary_key:
    - TC_BILLING_premium_feature_progress
  pillar_meaning:
    - progress visibility

feature_card_5_optional:
  primary_key:
    - TC_BILLING_premium_feature_share_ready
  pillar_meaning:
    - future share foundation
  note:
    - future-oriented wording only
    - do not imply fully implemented share feature

footer_note:
  key:
    - TC_BILLING_premium_footer_note
  purpose:
    - non-medical reminder
    - safety-first reminder

primary_cta:
  key:
    - TC_BILLING_premium_cta_upgrade
  purpose:
    - open upgrade flow candidate

secondary_cta:
  key:
    - TC_BILLING_premium_cta_continue_free
  purpose:
    - continue without pressure

ui_flow_rule:
  - hero -> features -> footer note -> CTA
  - Premium 価値は continuity support 中心で説明する
  - 価格表示は hero か CTA 近辺で視認可能にする

must_not_rules:
  - safety note を画面外へ追いやらない
  - Free 継続導線を消さない
  - future share を現在使えるように見せない
  - guaranteed result copy を置かない
