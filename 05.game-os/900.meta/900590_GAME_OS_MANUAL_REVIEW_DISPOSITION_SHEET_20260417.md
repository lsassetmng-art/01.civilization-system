# ============================================================
# GAME OS MANUAL REVIEW DISPOSITION SHEET
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 05.game-os
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
- Manual decision sheet for remaining non-canonical top-level folders
- Each target should be resolved as keep, migrate, or archive
- This sheet is decision-only and performs no move

decision_values:
- pending
- keep as canonical exception
- migrate into 010.constitution
- migrate into 020.architecture
- migrate into 030.model
- migrate into 040.runtime
- migrate into 050.flow
- migrate into 070.operations
- migrate into 080.policy
- migrate into 090.interface
- migrate into 120.implementation
- migrate into 900.meta
- archive as legacy

---

## 1. Canonical keep set

- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 070.operations
- 080.policy
- 090.interface
- 120.implementation
- 900.meta

---

## 2. Manual review targets

### 130.development
- current_decision: pending
- destination_if_migrate:
- reason:
- note:

---

## 3. Canonical roots and temp roots

- keep: 000_GAME_OS_INDEX.md
- keep: 000_GAME_OS_OVERVIEW.md
- keep legacy holding area for now: 900.meta/legacy-root-temp

---

## 4. Decision rule

Only after every pending item is resolved should the next move batch run.

Safe priority order:
1. keep canonical exception
2. migrate into clearly matching canonical folder
3. archive as legacy only when no canonical responsibility remains

---

## 5. Completion condition

This sheet is complete when:
- no current_decision remains pending
- every migrate decision has a destination_if_migrate
- every archive decision has a reason
