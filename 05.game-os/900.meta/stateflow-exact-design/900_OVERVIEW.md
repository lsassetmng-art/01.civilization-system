# ============================================================
# GAME OS STATEFLOW EXACT DESIGN OVERVIEW
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 900.meta/stateflow-exact-design
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

summary:
This folder fixes the stateflow exact design boundary for GameOS.
It translates implementation-ready scope into state machine and transition detail.

covered flow groups:
- Builder project creation flow
- Revision save and autosave flow
- Preview build flow
- Validation flow
- Export and submission flow
- Publish activation flow
- Runtime launch and play flow
- Save/load and recovery flow
- Persona growth outbox flow
- Gambling policy control flow

mandatory design elements per flow:
- flow purpose
- actor
- start state
- terminal states
- state list
- event list
- guard conditions
- transition rules
- async boundary
- retry/failure path
- audit note

current_primary_file:
- 900300_GAME_OS_STATEFLOW_EXACT_DESIGN_SET.md

notes:
- PersonaOS appears only as external contract destination
- This folder is stateflow exactness, not broad architecture discussion
- Flow design here must stay aligned with implementation-ready, screen exact, and DB exact packages
