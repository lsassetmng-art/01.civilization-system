# ============================================================
# TRAINING COACH LOCALE / CURRENCY FALLBACK POLICY
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
  - 多言語 / 多通貨の fallback 順序を固定する
  - 文言欠落時や価格変換未取得時の表示ぶれを防ぐ

locale_policy:
  supported_examples:
    - ja-JP
    - en-US
    - en-GB
  fallback_order_rule:
    - exact locale
    - base language
    - system default locale
    - ja-JP
  examples:
    - request: en-AU
      fallback_order:
        - en-AU
        - en
        - system default locale
        - ja-JP
    - request: fr-FR
      fallback_order:
        - fr-FR
        - fr
        - system default locale
        - ja-JP

currency_policy:
  supported_base_currency:
    - JPY
  price_source_policy:
    - 正本価格は JPY を基準保持
    - 表示用に現地通貨へ変換可能
  fallback_order_rule:
    - requested currency with valid rate
    - account preferred currency with valid rate
    - JPY
  rounding_policy:
    - store: high precision internal
    - display: currency specific display rounding
  unavailable_rate_behavior:
    - localized estimate unavailable の場合は JPY 表示
    - explanatory message key を返す

message_keys:
  - TC-LOCALE-0001:fallback_to_base_language
  - TC-LOCALE-0002:fallback_to_default_locale
  - TC-CURRENCY-0001:fallback_to_jpy
  - TC-CURRENCY-0002:rate_temporarily_unavailable

ui_policy:
  - ガイド本文と安全文言は locale fallback を許容する
  - price 表示は currency fallback を明示する
  - mixed locale 表示が発生した場合でも安全文言は優先表示する
