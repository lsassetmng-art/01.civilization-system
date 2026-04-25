# ============================================================
# GAME OS OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: root
document_type: overview
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FORMAL PURPOSE
# ============================================================

GameOS is the official game platform inside Civilization.
It supports multiple genres, multiple titles, Persona-enabled gameplay,
NPC Persona usage, game-to-Persona meaning reflection, and
high-control gambling experiences using national currency.

# ============================================================
# 2. OFFICIAL GENRE FAMILIES
# ============================================================

GameOS officially supports the following genre families:

- Visual Novel
- Dating Simulation
- RPG
- Puzzle
- Strategy
- Action Game
- Adventure Game
- 2D Fighting Game

Action Game includes:
- Side-Scrolling Action
- Survival Action

Adventure Game includes:
- exploration-heavy progression
- story-driven progression
- investigation-assisted progression

2D Fighting Game is treated as a rivalry-heavy Persona-capable battle genre.

Survival Action is not limited to horror and may include broader survival-oriented gameplay.

# ============================================================
# 3. CORE PRINCIPLES
# ============================================================

- player is the participation subject
- Persona usage is optional
- NPCs may use Persona
- game truth and persona truth are separated
- local game state and canonical Persona state are separated
- gambling using national currency is a high-control domain
- auditability and safety are mandatory
- multilingual support is a formal design premise
- multi-currency support is a formal design premise
- multi-device support is a formal design premise

# ============================================================
# 4. MULTILINGUAL / MULTI-CURRENCY / MULTI-DEVICE PREMISE
# ============================================================

GameOS is formally designed with multilingual support, multi-currency support,
and multi-device support as first-class design premises.

Multilingual support applies to:
- UI text
- explanations
- notifications
- display labels
- user-facing messages
- report and document display text

Multi-currency support applies to:
- prices
- wager-related monetary display
- billing-like values if applicable
- settlement-related values
- aggregate monetary display
- converted user-facing monetary display

Multi-device support applies to:
- iPhone
- Android
- PC
- tablet devices

GameOS must avoid hard-wiring:
- a single language
- a single currency structure
- a single device form factor

# ============================================================
# 5. MAJOR DOMAINS
# ============================================================

- constitution
- persona integration architecture
- npc persona architecture
- gambling runtime architecture
- player models
- persona state / relation / reflection models
- gambling wager / eligibility / outcome / settlement models
- reflection policy
- national currency wager policy

---

## 2026-04-17 implementation-start supplement alignment

GameOS implementation-start materials were added and aligned to canonical
responsibility folders instead of keeping them under temporary meta subfolders.

supplemented_layers:
- 030.model
- 050.flow
- 090.interface
- 120.implementation
- 900.meta

supplement_notes:
- 030.model now includes DB column exact design material
- 050.flow now includes stateflow exact design material
- 090.interface now includes screen exact design and request/response exact examples
- 120.implementation now includes implementation-ready package, phase order, and acceptance set
- 900.meta keeps structure alignment and audit memos

canonical_root_note:
The canonical root filenames are:
- 000_GAME_OS_INDEX.md
- 000_GAME_OS_OVERVIEW.md

Temporary helper files named:
- 000_INDEX.md
- 000_OVERVIEW.md

are not treated as canonical root filenames for GameOS.

additional_implementation_entry:
- 120.implementation/120590_GAME_OS_IMPLEMENTATION_START_PACK_20260417.md

additional_implementation_task_breakdown:
- 120.implementation/120600_GAME_OS_IMPLEMENTATION_TASK_BREAKDOWN_BY_MODULE_20260417.md

additional_implementation_runner_pack:
- 120.implementation/120610_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M01_M04_20260417.md

additional_implementation_runner_pack:
- 120.implementation/120620_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M05_M08_20260417.md

additional_implementation_runner_pack:
- 120.implementation/120640_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M12_M14_20260417.md

additional_implementation_execution_memo:
- 120.implementation/120650_GAME_OS_FINAL_IMPLEMENTATION_EXECUTION_MEMO_20260417.md

additional_module_specific_implementation_memo:
- 120.implementation/120660_GAME_OS_M01_BUILDER_FOUNDATION_IMPLEMENTATION_MEMO_20260417.md

additional_module_specific_implementation_memo:
- 120.implementation/120670_GAME_OS_M02_BUILDER_AUTHORING_CORE_IMPLEMENTATION_MEMO_20260417.md

additional_module_specific_bundle:
- 120.implementation/120680_GAME_OS_M03_M14_MODULE_SPECIFIC_IMPLEMENTATION_MEMO_BUNDLE_20260417.md

additional_execution_support_bundle:
- 120.implementation/120690_GAME_OS_DEVELOPMENT_EXECUTION_PACK_20260417.md
- 120.implementation/120700_GAME_OS_BATCH1_DEVELOPMENT_START_CHECKLIST_20260417.md
- 120.implementation/120710_GAME_OS_UNRESOLVED_GAP_TRACKING_MEMO_20260417.md

additional_pre_development_bundle:
- 120.implementation/120720_GAME_OS_BATCH1_DEVELOPMENT_TODO_PACK_20260417.md
- 120.implementation/120730_GAME_OS_BATCH2_TO_BATCH4_RESERVED_TODO_PACK_20260417.md
- 120.implementation/120740_GAME_OS_DEVELOPMENT_STATUS_BOARD_20260417.md

additional_design_completion_bundle:
- 120.implementation/120750_GAME_OS_DESIGN_COMPLETION_HANDOFF_BUNDLE_20260417.md
- 120.implementation/120760_GAME_OS_IMPLEMENTATION_ARTIFACT_LEDGER_20260417.md
- 900.meta/900620_GAME_OS_DESIGN_COMPLETION_STATUS_MEMO_20260417.md

additional_kickoff_ops_bundle:
- 120.implementation/120770_GAME_OS_IMPLEMENTATION_KICKOFF_MEMO_20260417.md
- 120.implementation/120780_GAME_OS_BATCH1_WORKLOG_TEMPLATE_20260417.md
- 120.implementation/120790_GAME_OS_DECISION_REGISTER_TEMPLATE_20260417.md
- 120.implementation/120800_GAME_OS_BATCH1_BLOCKER_TRIAGE_BOARD_20260417.md

additional_following_batch_bundle:
- 120.implementation/120810_GAME_OS_BATCH2_EXECUTION_CHECKLIST_20260417.md
- 120.implementation/120820_GAME_OS_BATCH3_EXECUTION_CHECKLIST_20260417.md
- 120.implementation/120830_GAME_OS_BATCH4_EXECUTION_CHECKLIST_20260417.md
- 120.implementation/120840_GAME_OS_ACCEPTANCE_EVIDENCE_TEMPLATE_PACK_20260417.md

additional_governance_bundle:
- 120.implementation/120850_GAME_OS_DAILY_EXECUTION_CADENCE_MEMO_20260417.md
- 120.implementation/120860_GAME_OS_BATCH_CLOSURE_REPORT_TEMPLATE_20260417.md
- 120.implementation/120870_GAME_OS_CHANGE_CONTROL_AND_ARTIFACT_UPDATE_RULES_20260417.md
- 120.implementation/120880_GAME_OS_RELEASE_READINESS_REVIEW_BOARD_20260417.md

additional_final_closure_bundle:
- 120.implementation/120890_GAME_OS_MASTER_EXECUTION_DASHBOARD_20260417.md
- 120.implementation/120900_GAME_OS_BATCH_HANDOFF_SIGNOFF_TEMPLATE_20260417.md
- 120.implementation/120910_GAME_OS_ACCEPTANCE_REVIEW_LEDGER_20260417.md
- 900.meta/900630_GAME_OS_DESIGN_TO_IMPLEMENTATION_FINAL_CLOSURE_MEMO_20260417.md

additional_ops_readiness_and_navigation_bundle:
- 120.implementation/120920_GAME_OS_QUICKSTART_NAVIGATION_MAP_20260417.md
- 120.implementation/120930_GAME_OS_BATCH_PROGRESS_SNAPSHOT_TEMPLATE_20260417.md
- 120.implementation/120940_GAME_OS_REVIEW_MEETING_AGENDA_TEMPLATE_20260417.md
- 900.meta/900640_GAME_OS_IMPLEMENTATION_OPERATIONS_READINESS_MEMO_20260417.md

additional_traceability_and_handoff_bundle:
- 120.implementation/120950_GAME_OS_TRACEABILITY_MATRIX_20260417.md
- 120.implementation/120960_GAME_OS_MODULE_TO_ACCEPTANCE_CROSSWALK_20260417.md
- 120.implementation/120970_GAME_OS_HANDOFF_AND_REVIEW_CHECKLIST_20260417.md
- 900.meta/900650_GAME_OS_TRACEABILITY_READINESS_MEMO_20260417.md

additional_final_navigation_and_saturation_bundle:
- 120.implementation/120980_GAME_OS_SINGLE_ENTRY_EXECUTION_GUIDE_20260417.md
- 120.implementation/120990_GAME_OS_MODULE_OWNERSHIP_AND_RESPONSIBILITY_MAP_20260417.md
- 120.implementation/121000_GAME_OS_DOCUMENT_MAINTENANCE_QUEUE_20260417.md
- 900.meta/900660_GAME_OS_DOCUMENTATION_SATURATION_MEMO_20260417.md

additional_batch1_master_bundle:
- 120.implementation/121010_GAME_OS_BATCH1_MASTER_PACK_20260417.md
- 120.implementation/121020_GAME_OS_BATCH1_DEPENDENCY_MATRIX_20260417.md
- 120.implementation/121030_GAME_OS_BATCH1_FIRST_ACTION_SHEET_20260417.md
