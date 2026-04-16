# ============================================================
# END OF LIFE PLANNER CANONICAL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
owner: Boss
prepared_by: Zero

positioning:
  - LifeOS / 人生設計領域
  - 終活と引継ぎ整理に特化した独立アプリ
  - 医療/介護/資産/連絡/希望事項の整理支援

boundaries:
  - 医療判断や法的助言の代替はしない
  - 正式な法務文書や公的手続の正本にはしない
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
    - 項目整理の支援
    - 抜け漏れチェック
    - 家族共有向け説明の下書き
    - 相談前メモ整理
    - 重要確認事項の提案
  prohibited:
    - 医療判断の断定
    - 法的判断の断定
    - 有資格者を装う表現
    - 代理交渉

data_storage:
  primary_schema: life
  note:
    - 本アプリのアプリデータは life スキーマを正本保存先とする
    - BusinessOS/ERP 側のスキーマへ自動保存しない
