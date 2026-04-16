# ============================================================
# MONEY PLANNER CANONICAL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
owner: Boss
prepared_by: Zero

positioning:
  - LifeOS / 人生設計領域
  - 家計簿ではなく中長期の資金計画に強いアプリ
  - 住宅、教育、老後、医療、旅行、終活などの将来費用計画を支援する

boundaries:
  - 投資判断や税務判断の代替はしない
  - 正式会計や正式申告の正本にはしない
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

data_storage:
  primary_schema: life
  note:
    - 本アプリのアプリデータは life スキーマを正本保存先とする
    - 他スキーマへ自動保存しない

ai_support:
  enabled: true
  scope:
    - 計画項目整理
    - 支出分類補助
    - 目的別資金の分解案
    - 見直しポイント提案
    - 関連アプリ見直し提案
  prohibited:
    - 投資判断の断定
    - 税務判断の断定
    - 有資格者を装う表現
