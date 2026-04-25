# ============================================================
# GAME OS OVERVIEW
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 05.game-os
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

summary:
GameOS is the game creation, release, runtime, and governance system
inside Civilization System.

root_layer_structure:
- 030.model
- 050.flow
- 090.interface
- 120.implementation
- 900.meta

layer_roles:
- 030.model:
  Holds DB/model truth, schema, and persistence exactness.

- 050.flow:
  Holds stateflow, transition rules, guards, async boundaries, and failure paths.

- 090.interface:
  Holds screen exact design and request/response exact interface contracts.

- 120.implementation:
  Holds implementation-ready package, implementation phase order, and acceptance test set.

- 900.meta:
  Holds meta-only records, migration notes, and structure alignment memos.

current_alignment_note:
The recently added GameOS implementation-facing documents were aligned out of
temporary meta subfolders into canonical responsibility folders.

primary_navigation_files:
- 030.model/030_INDEX.md
- 050.flow/050_INDEX.md
- 090.interface/090_INDEX.md
- 120.implementation/120_INDEX.md
- 900.meta/900_INDEX.md
