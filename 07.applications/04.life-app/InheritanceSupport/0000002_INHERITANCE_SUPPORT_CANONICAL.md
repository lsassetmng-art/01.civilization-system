# ============================================================
# INHERITANCE SUPPORT CANONICAL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
owner: Boss
prepared_by: Zero

positioning:
  - LifeOS / 法律領域
  - 相続、贈与、遺言、引継ぎ準備を扱う整理支援アプリ
  - 相続発生前の準備から発生後の相談整理までの入口を支援する

boundaries:
  - 法的助言や代理行為は提供しない
  - 裁判、代理交渉、正式な遺産分割実務の正本にはしない
  - 共通部品詳細は別チャットで管理される前提とし、本設計はアプリ固有責務を中心に扱う
  - BusinessOS/ERP の正式業務正本とは分離する

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
    - 書類不足チェック
    - メモ要約
    - 家族共有向け説明の下書き
  prohibited:
    - 法的判断の断定
    - 相続分の確定
    - 有資格者を装う表現
    - 代理交渉
