# ============================================================
# GAME OS FOLDER STRUCTURE ALIGNMENT MEMO
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 900.meta
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
This memo records the alignment of recently added GameOS documents
from temporary meta subfolders into canonical responsibility folders.

alignment_policy:
- DB exactness belongs to 030.model
- stateflow exactness belongs to 050.flow
- screen and request/response exactness belong to 090.interface
- implementation-ready, phase order, and acceptance belong to 120.implementation
- 900.meta keeps meta-only documents and migration notes

moved_files:
- 900.meta/db-column-exact-design/900200_GAME_OS_DB_COLUMN_EXACT_DESIGN_SET.md
  -> 030.model/030200_GAME_OS_DB_COLUMN_EXACT_DESIGN_SET.md

- 900.meta/stateflow-exact-design/900300_GAME_OS_STATEFLOW_EXACT_DESIGN_SET.md
  -> 050.flow/050300_GAME_OS_STATEFLOW_EXACT_DESIGN_SET.md

- 900.meta/screen-exact-design/900100_GAME_OS_SCREEN_EXACT_DESIGN_SET.md
  -> 090.interface/090100_GAME_OS_SCREEN_EXACT_DESIGN_SET.md

- 900.meta/request-response-exact-json-examples/900400_GAME_OS_REQUEST_RESPONSE_EXACT_JSON_EXAMPLES.md
  -> 090.interface/090400_GAME_OS_REQUEST_RESPONSE_EXACT_JSON_EXAMPLES.md

- 900.meta/implementation-ready/900500_GAME_OS_IMPLEMENTATION_READY_PACKAGE_ROUND2_20260416.md
  -> 120.implementation/120500_GAME_OS_IMPLEMENTATION_READY_PACKAGE_ROUND2_20260416.md

- 900.meta/implementation-phase-by-module/900510_GAME_OS_IMPLEMENTATION_PHASE_BY_MODULE.md
  -> 120.implementation/120510_GAME_OS_IMPLEMENTATION_PHASE_BY_MODULE.md

- 900.meta/acceptance-test-case-set/900520_GAME_OS_ACCEPTANCE_TEST_CASE_SET.md
  -> 120.implementation/120520_GAME_OS_ACCEPTANCE_TEST_CASE_SET.md

result:
The GameOS folder structure is now aligned to canonical responsibility folders
instead of keeping implementation-facing documents under temporary meta subfolders.
