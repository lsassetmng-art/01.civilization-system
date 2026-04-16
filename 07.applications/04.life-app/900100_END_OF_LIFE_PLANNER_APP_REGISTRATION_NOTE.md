# ============================================================
# END OF LIFE PLANNER APP REGISTRATION NOTE
# under 04.life-app
# ============================================================

status: canonical-draft
phase: registration-reflection
app_name:
  en: EndOfLifePlanner
  ja: 終活サポートアプリ

placement:
  root: 01.civilization-system/07.applications/04.life-app
  app_folder: 01.civilization-system/07.applications/04.life-app/EndOfLifePlanner

positioning:
  - 終活と引継ぎ整理に特化した独立アプリ
  - LifeOS 人生設計領域の一部
  - 医療/介護/葬儀/契約/デジタル遺品を家族引継ぎ前提で整理する

main_users:
  - 個人
  - 高齢者
  - 家族支援者

roles:
  - owner
  - family_viewer
  - delegated_editor

core_functions:
  - 緊急連絡先
  - 家族情報
  - 医療意思
  - 介護意思
  - 葬儀/墓の希望
  - 契約一覧
  - デジタル資産メモ
  - 引継ぎメッセージ
  - 書類一覧
  - 共有パック出力
  - 相続相談導線

lifeos_linkage:
  - InheritanceSupport
  - LegalSupport
  - MoneyPlanner
  - LifePlanner

schema_policy:
  - schema is life
  - table prefix is eol_

important_boundary:
  - design-only documents are prepared
  - implementation is not started
  - executable SQL is not started
