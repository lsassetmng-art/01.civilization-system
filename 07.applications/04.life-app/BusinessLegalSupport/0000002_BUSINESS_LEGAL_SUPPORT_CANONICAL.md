# ============================================================
# BUSINESS LEGAL SUPPORT CANONICAL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
owner: Boss
prepared_by: Zero

positioning:
  - LifeOS / 法律領域
  - 個人事業/小規模事業者向け事業法務整理アプリ
  - 契約、労務論点、取引トラブル、規約確認、相談前整理の支援

boundaries:
  - BusinessOS/ERP 法務正本とは分離
  - 法的助言や代理行為は提供しない
  - 共通部品詳細は別チャットで管理される前提とし、本設計はアプリ固有責務を中心に扱う
  - 本格的企業統制機能は持たない

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
    - 契約確認観点の提案
    - 期限漏れチェック
    - メモ要約
    - 専門家相談用の質問案整理
  prohibited:
    - 法的判断の断定
    - 違法/適法の確定
    - 有資格者を装う表現
    - 代理交渉
