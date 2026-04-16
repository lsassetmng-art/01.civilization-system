# ============================================================
# END OF LIFE PLANNER PORTFOLIO LEDGER ENTRY
# under 04.life-app
# ============================================================

status: canonical-draft
phase: portfolio-ledger-entry
app_name:
  en: EndOfLifePlanner
  ja: 終活サポートアプリ

app_folder:
  - 01.civilization-system/07.applications/04.life-app/EndOfLifePlanner

domain_position:
  - LifeOS / 人生設計領域
  - 終活と引継ぎ整理に特化した独立アプリ

portfolio_role:
  - 人生終盤の整理支援
  - 家族共有前提の所在整理
  - 相続/法務導線の入口整理

main_value:
  - 終活情報を一か所に集約できる
  - 医療/介護/葬儀/契約/デジタル遺品を横断整理できる
  - 家族共有と引継ぎパック出力まで含めて整理できる

main_users:
  - 個人
  - 高齢者
  - 家族支援者

roles:
  - owner
  - family_viewer
  - delegated_editor

core_modules:
  - owner_profile
  - emergency_contact
  - family_profile
  - medical_preference
  - care_preference
  - funeral_preference
  - contract_registry
  - digital_asset_note
  - document_registry
  - family_message
  - handoff_document
  - sharing_permission
  - checklist_item
  - access_audit_log

linkage_targets:
  - InheritanceSupport
  - LegalSupport
  - MoneyPlanner
  - LifePlanner

pricing:
  free:
    monthly_jpy: 0
  family:
    monthly_jpy: 500
  family_plus:
    monthly_jpy: 900

support_policy:
  - AIチャットのみ
  - 人間サポートなし
  - 医療/法務/税務の最終判断はしない

schema_policy:
  - schema is life
  - table prefix is eol_

current_state:
  design:
    - complete-level
  implementation_preparation:
    - complete
  implementation:
    - not_started

important_boundary:
  - executable SQL is not started
  - runtime coding is not started
  - start-ready but not started
