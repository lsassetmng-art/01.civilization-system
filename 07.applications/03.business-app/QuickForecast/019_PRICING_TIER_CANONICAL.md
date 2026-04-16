# ============================================================
# QuickForecast Pricing Tier Canonical
# ============================================================

status: canonical
system: QuickForecast
topic: pricing_tier
owner: Boss
prepared_by: Zero

tier_model:
  - name: Basic
    billing_type: monthly
    price_jpy_monthly: 0
    summary:
      - 一般データのみで需要予測を行う無料層
      - ERP未連携
    included:
      - 一般データベース予測
      - 簡易予測根拠表示
      - 企画書ドラフト
      - 提案書ドラフト
      - 保存と見返し
    excluded:
      - ERPデータ利用
      - 社内実績データ利用
      - ERP連携前提の高度分析

  - name: Pro
    billing_type: monthly
    price_jpy_monthly: 500
    summary:
      - ERPデータを含む実務向け上位層
      - 現場でそのまま業務提案に使う前提
    included:
      - Basic の全機能
      - ERPデータ利用
      - 社内実績データ利用
      - 商品別予測
      - 顧客別予測
      - 拠点別予測
      - 詳細提案ドラフト
      - 実績比較
      - 精度振り返り
    excluded:
      - ERP正本を自動確定する権限

pricing_policy_notes:
  currency: JPY
  billing_cycle: monthly
  fixed_tier_names:
    - Basic
    - Pro
  canonical_prices:
    Basic: 0
    Pro: 500
