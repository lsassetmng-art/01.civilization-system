# ============================================================
# PERSONAL LEGAL SUPPORT CANONICAL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
owner: Boss
prepared_by: Zero

positioning:
  - LifeOS / 法律領域
  - 個人/家族向け生活法務整理アプリ
  - 日常契約、住居、消費者トラブル、相続入口、終活入口の整理支援

boundaries:
  - BusinessOS/ERP 法務正本とは分離
  - 法的助言や代理行為は提供しない
  - 共通部品詳細は別チャットで管理される前提とし、本設計はアプリ固有責務を中心に扱う

required_cross_cutting:
  multilingual: true
  multicurrency: true
  multi_device:
    iphone: true
    android: true
    pc: true
    tablet: true

ai_support:
  enabled: true
  scope:
    - 相談前の論点整理
    - 必要確認事項の提案
    - 期限漏れチェック
    - メモ要約
    - 家族共有向け説明の下書き
  prohibited:
    - 法的判断の断定
    - 違法/適法の確定
    - 有資格者を装う表現
    - 代理交渉
