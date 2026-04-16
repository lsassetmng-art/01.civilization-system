# ============================================================
# LEGAL SUPPORT CORE CONSTITUTION
# ============================================================

status: draft-formal
system: LegalSupport
layer: constitution
subdomain: core

official_name:
  ja: 法律相談サポートアプリ
  en: LegalSupport

mission:
  - 個人が法律相談前後で必要情報を整理しやすくする
  - 法律判断ではなく、相談準備品質と記録継続性を高める
  - 家族、終活、相続、生活設計にまたがる法務整理の入口となる

positioning:
  - 法律判断アプリではない
  - 個人生活文脈の法務整理アプリである
  - 専門家相談の前後をつなぐ整理基盤である

target_users:
  primary:
    - 個人
    - 家族の法務整理をしたい人
    - 専門家へ相談する前に論点整理したい人
  secondary:
    - 家族と情報共有したい人
    - 終活や相続準備を進めたい人

core_value:
  - 事実を整理できる
  - 時系列を作れる
  - 書類漏れを減らせる
  - 次回確認事項を残せる
  - 家族共有を安全に進められる

non_goals:
  - 法的結論の確定提供
  - 弁護士等の専門家の代替
  - 勝敗予測
  - 代理行為
  - 自動的な法的文書保証

service_boundaries:
  allowed:
    - 相談テーマ作成
    - 事実整理
    - 時系列整理
    - 書類整理
    - 質問整理
    - 相談履歴記録
    - 期限管理
    - 家族共有
    - 共有PDF出力
  forbidden:
    - 法律判断の断定表示
    - ユーザー入力をそのまま法的真実として認定
    - 専門家資格が必要な行為の代替
    - 常時公開型の外部共有リンク

pricing_principle:
  - 課金対象は法律判断ではなく整理支援・共有・記録強化
  - Free と PlusFamily統合プランの2段階とする
  - Plus と Family は統合し月額500円とする
  - サポートはAIチャットのみとする

plans:
  free:
    monthly_price_jpy: 0
    included:
      - 相談テーマ作成
      - 事実メモ
      - 時系列整理
      - 関係者整理
      - 書類一覧
      - 質問リスト
      - 相談履歴
      - 次回アクション
    limited:
      - 保存件数上限
      - PDF出力なし
      - 家族共有なし
      - AI要約なし
      - 音声メモなし
  plus_family:
    monthly_price_jpy: 500
    included:
      - 分野別テンプレート
      - 相談前チェックリスト
      - 重要期限管理
      - 共有PDF出力
      - 家族共有
      - 会話要約
      - 契約書メタ情報管理
      - 音声メモ

support_policy:
  - AIチャットによる使い方支援のみ
  - 人間による法務相談は含まない

platform_policy:
  multilingual: true
  multicurrency: true
  multi_device:
    iphone: true
    android: true
    pc: true
    tablet: true
