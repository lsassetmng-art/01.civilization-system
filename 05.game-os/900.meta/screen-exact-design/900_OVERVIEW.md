# ============================================================
# GAME OS SCREEN EXACT DESIGN OVERVIEW
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 900.meta/screen-exact-design
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

summary:
This folder fixes the screen exact design boundary for GameOS.
It translates implementation-ready scope into screen-level execution detail.

screen groups:
- Builder workspace screens
- Builder editing screens
- Preview and validation screens
- Export and submission screens
- Runtime player screens
- Governance review screens

mandatory design elements per screen:
- screen purpose
- actor
- entry condition
- visible state set
- data bindings
- commands
- validation
- error state
- transition targets
- permission basis
- platform notes

current_primary_file:
- 900100_GAME_OS_SCREEN_EXACT_DESIGN_SET.md

notes:
- PersonaOS appears only as external contract context
- This folder is UI exactness, not broad architecture brainstorming
- Screen design here must stay aligned with implementation-ready package
