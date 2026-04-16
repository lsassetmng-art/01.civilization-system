# ============================================================
# END OF LIFE PLANNER IMPLEMENTATION PREPARATION HANDOFF
# ============================================================

status: canonical-draft
phase: L13-implementation-preparation-complete
app: EndOfLifePlanner

document_purpose:
  - 実装準備完了状態を handoff 用に短く固定する
  - 次チャットで最小参照ですぐ再開できるようにする

state_summary:
  design_state:
    - complete-level
  implementation_preparation_state:
    - complete
  execution_state:
    - not_started
  schema_state:
    - life schema fixed
  table_prefix_state:
    - eol_ fixed

start_ready_conditions:
  - screen spec fixed
  - api spec fixed
  - db design without sql fixed
  - policy and safety fixed
  - review docs fixed

do_not_forget:
  - implementation has not started
  - executable SQL has not started
  - runtime code has not started
  - current state is ready-to-start only

recommended_first_docs_if_start_later:
  - 130.development/130120_END_OF_LIFE_PLANNER_IMPLEMENTATION_PREPARATION_PACKAGE.md
  - 090.interface/090030_END_OF_LIFE_PLANNER_FORMAL_SCREEN_SPECIFICATION.md
  - 120.implementation/120030_END_OF_LIFE_PLANNER_FORMAL_API_SPECIFICATION.md
  - 110.infrastructure/110028_END_OF_LIFE_PLANNER_PHYSICAL_DB_DESIGN_WITHOUT_SQL.md
