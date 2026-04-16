# ============================================================
# PocketSecretary Pricing Plan Canonical
# ============================================================

status: canonical
system: PocketSecretary
topic: pricing_plan
owner: Boss
prepared_by: Zero

plan_model:
  - name: Free
    billing_type: monthly
    price_jpy_monthly: 0
    summary:
      - 基本生活補助向け無料プラン
      - AI相談なし
    included:
      - 初期Persona 3
      - 追加Persona 1
      - ダッシュボード
      - ToDo
      - メモ
      - 書庫
      - 計算機能
      - 基本通知
      - メーラー起動
    excluded:
      - AI相談
      - 交通費管理強化
      - 名刺管理
      - ERP申請下書き
      - 会社秘書機能

  - name: Pro
    billing_type: monthly
    price_jpy_monthly: 300
    summary:
      - 個人向け上位プラン
      - 日常実務補助まで対応
    included:
      - Free の全機能
      - 初期Persona 3
      - 追加Persona 3
      - Yahoo乗換案内連携
      - 交通費管理
      - 月次集計
      - 高度通知
      - 個人相談向けAI機能
    excluded:
      - 会社秘書機能
      - ERP申請下書き本格利用
      - 名刺管理本格機能

  - name: For Business
    billing_type: monthly
    price_jpy_monthly: 700
    summary:
      - 業務補助を含む事業向けプラン
      - 会社秘書とERP前段機能を含む
    included:
      - Pro の全機能
      - 会社秘書
      - 名刺管理
      - ERP申請下書き
      - 会社論点を含む相談
      - 書庫文書要約
      - 見積下書き
      - 発注下書き
      - 明示操作によるERP連携補助
    excluded:
      - ERPへの自動確定送信
      - 明示なし送信

pricing_policy_notes:
  currency: JPY
  billing_cycle: monthly
  fixed_plan_names:
    - Free
    - Pro
    - For Business
  canonical_prices:
    Free: 0
    Pro: 300
    For Business: 700
  naming_note:
    - 最上位プラン名は For Business を正本とする
    - 旧表現 Enterprise は今後の正式名称としては使わない
