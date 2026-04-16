# ============================================================
# END OF LIFE PLANNER IMPLEMENTATION PLAN
# ============================================================

status: canonical-draft
phase: L13-implementation-preparation-complete
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 120.implementation
subfolder: 010.core
owner: Boss
prepared_by: Zero

implementation_steps:
  - app_shell
  - end_of_life_case_crud
  - preference_and_medical_care_management
  - asset_document_management
  - contact_management
  - family_share_prep
  - ai_support_entry
  - lifeos_bridge

notes:
  - 共通部品詳細は別正本参照
  - 本アプリでは app-specific extension を実装する
