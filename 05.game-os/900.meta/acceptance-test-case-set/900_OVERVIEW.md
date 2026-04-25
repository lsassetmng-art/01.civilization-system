# ============================================================
# GAME OS ACCEPTANCE TEST CASE SET OVERVIEW
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 900.meta/acceptance-test-case-set
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

summary:
This folder fixes the acceptance test boundary for GameOS.
It translates exact design and phase planning into implementation-verifiable test cases.

covered test groups:
- Builder foundation
- Builder authoring
- Preview and validation
- Export and submission
- Publish activation and launcher
- VN runtime
- RPG runtime
- Save/load and recovery
- Persona growth outbox
- Gambling policy control
- Cross-flow invariants

mandatory design elements per test case:
- test case id
- purpose
- preconditions
- input or action
- expected result
- evidence points
- blocking severity if failed

current_primary_file:
- 900520_GAME_OS_ACCEPTANCE_TEST_CASE_SET.md

notes:
- This folder is for implementation acceptance, not exploratory QA brainstorming
- Test cases here should be sufficient to declare GameOS implementation-start pack operationally checkable
