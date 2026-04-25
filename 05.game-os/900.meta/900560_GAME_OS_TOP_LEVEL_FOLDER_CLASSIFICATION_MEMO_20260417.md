# ============================================================
# GAME OS TOP LEVEL FOLDER CLASSIFICATION MEMO
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
- Classify current GameOS top-level folders into canonical, migration-target, or legacy-candidate
- Avoid accidental moves by deciding classification before any relocation

---

## 1. Canonical top-level target set

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

## 2. Current top-level folders

- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 070.operations
- 080.policy
- 090.interface
- 120.implementation
- 130.development
- 900.meta

---

## 3. Classification: canonical

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

## 4. Classification: migration-target candidate


- 130.development

interpretation_rule:
- Non-canonical folders are not automatically wrong.
- They must be reviewed next as either:
  - migrate into a canonical folder
  - keep as canonical exception
  - archive as legacy

---

## 5. Classification hints by folder-name pattern

- 010.constitution : already matches numbered canonical-style pattern
- 020.architecture : already matches numbered canonical-style pattern
- 030.model : already matches numbered canonical-style pattern
- 040.runtime : already matches numbered canonical-style pattern
- 050.flow : already matches numbered canonical-style pattern
- 070.operations : already matches numbered canonical-style pattern
- 080.policy : already matches numbered canonical-style pattern
- 090.interface : already matches numbered canonical-style pattern
- 120.implementation : already matches numbered canonical-style pattern
- 130.development : likely review needed
- 900.meta : already matches numbered canonical-style pattern

---

## 6. Root file classification

- CANONICAL ROOT FILE: 000_GAME_OS_INDEX.md
- CANONICAL ROOT FILE: 000_GAME_OS_OVERVIEW.md

---

## 7. Preliminary decision summary


canonical_keep:
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

review_next:
- 130.development

root_files_keep:
- 000_GAME_OS_INDEX.md
- 000_GAME_OS_OVERVIEW.md

root_files_legacy_or_remove_later:
- 900.meta/legacy-root-temp

---

## 8. Next action recommendation

Recommended next step:
- generate a decision memo that maps each review_next folder to one of:
  - keep as canonical exception
  - migrate into an existing canonical folder
  - archive as legacy

No folder move is performed by this memo.
