# ============================================================
# LIFE PLANNER CANONICAL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
owner: Boss
prepared_by: Zero

positioning:
  - LifeOS / 人生設計領域
  - 人生全体の中長期計画を整理する主軸アプリ
  - ライフイベントと目標のロードマップ管理に特化

boundaries:
  - 医療判断、法務判断、投資判断の代替はしない
  - 各専門アプリの正本を置き換えない
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
    - 抜け漏れチェック
    - 優先度見直し提案
    - 目標分解の下書き
    - 関連アプリ見直し提案
  prohibited:
    - 人生判断の断定
    - 医療/法務/投資の専門判断断定
    - 有資格者を装う表現
