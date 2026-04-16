# ============================================================
# GAME OS DB COLUMN EXACT DESIGN OVERVIEW
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 900.meta/db-column-exact-design
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

summary:
This folder fixes the DB column exact design boundary for GameOS.
It translates implementation-ready truth families into table-level column exactness.

covered domains:
- Builder workspace and project truth
- Revision and autosave truth
- Template and runtime profile binding truth
- Validation and finding truth
- Export, manifest, and submission truth
- Release and runtime session truth
- Save/load and recovery truth
- Persona growth outbox truth
- Policy review truth

mandatory design elements per table:
- table purpose
- primary key
- business key
- foreign keys
- exact column set
- lifecycle columns
- optimistic concurrency where needed
- uniqueness rules
- recommended indexes
- archival rule

current_primary_file:
- 900200_GAME_OS_DB_COLUMN_EXACT_DESIGN_SET.md

notes:
- This folder is column exactness, not loose schema brainstorming
- Table names here must stay aligned with GameOS implementation-ready package
