# ============================================================
# PRICING AND PLAN CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only
app_name:
  en: LegalSupport
  ja: 法律相談サポートアプリ

pricing_policy:
  - 初回相談前の整理は無料で始められる
  - 課金軸は共有、出力、継続管理、整理強化に置く
  - 法的最終判断そのものは課金対象にしない
  - サポートは AI チャットのみ
  - 人数課金は行わない
  - 家族人数が増えても固定料金を基本とする

plans:

  free:
    plan_name_ja: 無料
    price_jpy_month: 0
    target:
      - 自分だけで相談前整理をしたい個人
    included:
      - 案件作成
      - 事実関係整理
      - 時系列整理
      - 関係者整理
      - 書類 metadata 整理
      - 面談記録
      - タスク管理 基本
      - 期限管理 基本
      - 基本検索
      - 基本テンプレート
      - 多言語対応
      - 多通貨対応
      - iPhone Android PC タブレット対応
    limits:
      - delegated_editor 不可
      - 共有パックは簡易版のみ
      - 高度な共有範囲設定なし
      - 抜け漏れ候補提示は簡易
      - 書類/証拠整理強化は対象外

  family_plus:
    plan_name_ja: 家族共有
    price_jpy_month: 500
    target:
      - 家族や支援者と一緒に相談準備をしたい利用者
    included:
      - viewer
      - delegated_editor
      - 共有パック出力
      - included_sections 指定
      - redaction_level 指定
      - 高秘匿除外設定
      - タスク管理強化
      - 家族向け共有メモ
      - 相談先比較メモ
      - カテゴリ別テンプレート拡張
      - 会話ログ要約
      - 論点抜け漏れ候補提示
      - リマインド強化
      - デジタル証拠整理強化
    billing_notes:
      - 月額固定
      - 家族人数で増額しない
      - 同一アカウントでマルチデバイス利用可能

plan_design_reason:
  - 法律アプリは高価格だと入口利用が進みにくい
  - このアプリの価値は判断代行ではなく整理と共有
  - 無料で入口を広くし、共有と継続運用で課金成立を狙う
  - 月額500円帯は家族利用でも導入しやすい

support_policy:
  support_type:
    - AIチャットのみ
  excludes:
    - 弁護士業務の代行
    - 税理士業務の代行
    - 法的最終判断の確定
    - 訴訟方針の保証
    - 書面の正式署名/代理提出
